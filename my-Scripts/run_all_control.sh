#!/bin/bash

# Exit on error
set -e

bash ./my-Scripts/perm_mnist_ewc_on_control.sh
bash ./my-Scripts/perm_mnist_gem_buf500_control.sh
bash ./my-Scripts/perm_mnist_agem_buf500_control.sh
bash ./my-Scripts/perm_mnist_der_buf500_control.sh
bash ./my-Scripts/perm_mnist_derpp_buf500_control.sh

<<<<<<< HEAD
=======
bash ./my-Scripts/perm_mnist_ewc_on_control_pnn.sh
bash ./my-Scripts/perm_mnist_gem_buf500_control_pnn.sh
bash ./my-Scripts/perm_mnist_agem_buf500_control_pnn.sh
bash ./my-Scripts/perm_mnist_der_buf500_control_pnn.sh
bash ./my-Scripts/perm_mnist_derpp_buf500_control_pnn.sh

>>>>>>> master
bash ./my-Scripts/seq_mnist_ewc_on_control.sh
bash ./my-Scripts/seq_mnist_gem_buf500_control.sh
bash ./my-Scripts/seq_mnist_agem_buf500_control.sh
bash ./my-Scripts/seq_mnist_der_buf500_control.sh
bash ./my-Scripts/seq_mnist_derpp_buf500_control.sh

<<<<<<< HEAD
=======
bash ./my-Scripts/seq_mnist_ewc_on_control_pnn.sh
bash ./my-Scripts/seq_mnist_gem_buf500_control_pnn.sh
bash ./my-Scripts/seq_mnist_agem_buf500_control_pnn.sh
bash ./my-Scripts/seq_mnist_der_buf500_control_pnn.sh
bash ./my-Scripts/seq_mnist_derpp_buf500_control_pnn.sh

bash ./my-Scripts/360_mnist_ewc_on_control.sh
bash ./my-Scripts/360_mnist_gem_buf500_control.sh
bash ./my-Scripts/360_mnist_agem_buf500_control.sh
bash ./my-Scripts/360_mnist_der_buf500_control.sh
bash ./my-Scripts/360_mnist_derpp_buf500_control.sh

bash ./my-Scripts/360_mnist_ewc_on_control_pnn.sh
bash ./my-Scripts/360_mnist_gem_buf500_control_pnn.sh
bash ./my-Scripts/360_mnist_agem_buf500_control_pnn.sh
bash ./my-Scripts/360_mnist_der_buf500_control_pnn.sh
bash ./my-Scripts/360_mnist_derpp_buf500_control_pnn.sh

>>>>>>> master
bash ./my-Scripts/seq_cifar10_ewc_on_control.sh
bash ./my-Scripts/seq_cifar10_gem_buf500_control.sh
bash ./my-Scripts/seq_cifar10_agem_buf500_control.sh
bash ./my-Scripts/seq_cifar10_der_buf500_control.sh
bash ./my-Scripts/seq_cifar10_derpp_buf500_control.sh
bash ./my-Scripts/seq_cifar10_xder_buf500_control.sh

<<<<<<< HEAD
=======
bash ./my-Scripts/seq_cifar10_ewc_on_control_pnn.sh
bash ./my-Scripts/seq_cifar10_gem_buf500_control_pnn.sh
bash ./my-Scripts/seq_cifar10_agem_buf500_control_pnn.sh
bash ./my-Scripts/seq_cifar10_der_buf500_control_pnn.sh
bash ./my-Scripts/seq_cifar10_derpp_buf500_control_pnn.sh
bash ./my-Scripts/seq_cifar10_xder_buf500_control_pnn.sh

>>>>>>> master
bash ./my-Scripts/seq_cifar100_der_buf500_control.sh
bash ./my-Scripts/seq_cifar100_der_buf2000_control.sh
bash ./my-Scripts/seq_cifar100_derpp_buf500_control.sh
bash ./my-Scripts/seq_cifar100_derpp_buf2000_control.sh
<<<<<<< HEAD
bash ./my-Scripts/seq_cifar100_xder_buf500_alpha0.3_beta0.8_eta0.001_m0.7_control.sh
bash ./my-Scripts/seq_cifar100_xder_buf2000_alpha0.6_beta0.9_eta0.01_m0.2_control.sh
=======
bash ./my-Scripts/seq_cifar100_xder_buf500_alpha0d3_beta0d8_eta0d001_m0d7_control.sh
bash ./my-Scripts/seq_cifar100_xder_buf2000_alpha0d6_beta0d9_eta0d01_m0d2_control.sh

bash ./my-Scripts/seq_cifar100_der_buf500_control_pnn.sh
bash ./my-Scripts/seq_cifar100_der_buf2000_control_pnn.sh
bash ./my-Scripts/seq_cifar100_derpp_buf500_control_pnn.sh
bash ./my-Scripts/seq_cifar100_derpp_buf2000_control_pnn.sh
bash ./my-Scripts/seq_cifar100_xder_buf500_alpha0d3_beta0d8_eta0d001_m0d7_control_pnn.sh
bash ./my-Scripts/seq_cifar100_xder_buf2000_alpha0d6_beta0d9_eta0d01_m0d2_control_pnn.sh
>>>>>>> master

bash ./my-Scripts/seq_tinyimg_agem_buf200_control.sh
bash ./my-Scripts/seq_tinyimg_agem_buf500_control.sh
bash ./my-Scripts/seq_tinyimg_agem_buf5120_control.sh
bash ./my-Scripts/seq_tinyimg_der_buf200_control.sh
bash ./my-Scripts/seq_tinyimg_der_buf500_control.sh
bash ./my-Scripts/seq_tinyimg_der_buf5120_control.sh
<<<<<<< HEAD
bash ./my-Scripts/seq_tinyimg_derpp_buf200_alpha0.1_beta1.0_control.sh
bash ./my-Scripts/seq_tinyimg_derpp_buf500_alpha0.2_beta0.5_control.sh
bash ./my-Scripts/seq_tinyimg_derpp_buf5120_alpha0.1_beta0.5_control.sh
=======
bash ./my-Scripts/seq_tinyimg_derpp_buf200_alpha0d1_beta1d0_control.sh
bash ./my-Scripts/seq_tinyimg_derpp_buf500_alpha0d2_beta0d5_control.sh
bash ./my-Scripts/seq_tinyimg_derpp_buf5120_alpha0d1_beta0d5_control.sh

bash ./my-Scripts/seq_tinyimg_pt_agem_buf200_control.sh
bash ./my-Scripts/seq_tinyimg_pt_agem_buf500_control.sh
bash ./my-Scripts/seq_tinyimg_pt_agem_buf5120_control.sh
bash ./my-Scripts/seq_tinyimg_pt_der_buf200_control.sh
bash ./my-Scripts/seq_tinyimg_pt_der_buf500_control.sh
bash ./my-Scripts/seq_tinyimg_pt_der_buf5120_control.sh
bash ./my-Scripts/seq_tinyimg_pt_derpp_buf200_alpha0d1_beta1d0_control.sh
bash ./my-Scripts/seq_tinyimg_pt_derpp_buf500_alpha0d2_beta0d5_control.sh
bash ./my-Scripts/seq_tinyimg_pt_derpp_buf5120_alpha0d1_beta0d5_control.sh
>>>>>>> master
