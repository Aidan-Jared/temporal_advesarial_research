from utils.best_args import best_args

if __name__ == "__main__":
    datasets = [
        # "perm-mnist",
        "seq-mnist",
        "seq-cifar100",
        "seq-cifar10",
        "seq-tinyimg",
    ]
    models = ["ewc_on", "gem", "agem", "der", "derpp", "xder"]
    data_backbone = {
        # "mnist-360": ["mnistmlp", "mnistmlp-pnn"],
        # "perm-mnist": ["mnistmlp", "mnistmlp-pnn"],
        "seq-mnist": ["mnistmlp", "mnistmlp-pnn"],
        "seq-cifar100": ["reduced-resnet18", "resnet18-pnn"],
        "seq-cifar10": ["reduced-resnet18", "resnet18-pnn"],
        "seq-tinyimg": ["resnet18-7x7", "resnet18-7x7-pt"],
    }
    with open("args.txt", "a") as f:
        for data in datasets:
            params = best_args[data]
            for model in models:
                if model in params:
                    param = params[model]
                else:
                    continue
                for backbone in data_backbone[data]:
                    for buffer in param.keys():
                        output = (
                            "--seed 42 "
                            + " --runs 5 "
                            + " --model_config base "
                            + " --dataset "
                            + data
                            + " --model "
                            + model
                            + " --backbone "
                            + backbone
                        )
                        if buffer > 0:
                            output = output + f" --buffer_size {buffer} "
                        if "mnistmlp-pnn" in backbone:
                            output += f" --input_size {28 * 28} "
                        for arg, value in param[buffer].items():
                            output += f" --{arg} {value} "
                        # print(output)
                        f.write(output + "\n")
