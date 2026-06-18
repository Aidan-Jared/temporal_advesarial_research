import glob
import json
import os
import numpy as np


def safe(obj):
    if isinstance(obj, np.ndarray):
        return obj.tolist()
    if isinstance(obj, (np.integer,)):
        return int(obj)
    if isinstance(obj, (np.floating,)):
        return float(obj)
    if isinstance(obj, dict):
        return {k: safe(v) for k, v in obj.items()}
    if isinstance(obj, (list, tuple)):
        return [safe(v) for v in obj]
    return obj


CLEARED_FILES = set()


def write_ndjson(read_path: str, write_path: str):
    exclude_keys = {"cpu_memory_usage", "gpu_memory_usage"}

    # Define a clean environment for eval so it maps 'array(...)' straight to a Python list
    eval_env = {
        "np": np,  # Keeps the underlying list structure intact
        "numpy": np,
        "array": lambda x, *args, **kwargs: list(x),
        "ndarray": lambda x, *args, **kwargs: list(x),
        "None": None,
        "False": False,
        "True": True,
    }

    for file in glob.glob(read_path, recursive=True):
        try:
            with open(file, "r", encoding="utf-8") as f:
                file_content = f.read().strip()

            if not file_content:
                continue

            record = eval(file_content, eval_env, eval_env)

            if isinstance(record, dict):
                filtered_record = {
                    k: v for k, v in record.items() if k not in exclude_keys
                }
                sanitized = safe(filtered_record)

                dataset = sanitized.get("dataset", "unknown_dataset")

                # Cleanly inject the dataset name before the .ndjson extension
                if write_path.endswith(".ndjson"):
                    final_out_path = (
                        write_path.replace(".ndjson", "") + f"_{dataset}.ndjson"
                    )
                else:
                    final_out_path = f"{write_path}_{dataset}.ndjson"

                # Check the global tracker to see if this script run has ever wiped this file
                if final_out_path not in CLEARED_FILES:
                    if os.path.exists(final_out_path):
                        os.remove(final_out_path)
                    CLEARED_FILES.add(final_out_path)

                # Append mode safely preserves every log entry in the loop
                with open(final_out_path, "a", encoding="utf-8") as out:
                    out.write(json.dumps(sanitized) + "\n")
        except Exception as e:
            print(f"Skipping file {file} due to parsing error: {e}")


def main():
    task_path = "data/results/task-il/**/*.pyd"
    class_path = "data/results/class-il/**/*.pyd"

    print("Extracting task-il...")
    write_ndjson(task_path, "data/results/merged_task-il")

    print("Extracting class-il...")
    write_ndjson(class_path, "data/results/merged_class-il")

    print("Done!")


if __name__ == "__main__":
    main()
