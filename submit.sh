#!/bin/bash
#SBATCH -n 10
#SBATCH --gres=gpu:v100:1
#SBATCH --time=48:00:00
#SBATCH -J depth1

python train.py --scheduler_step_size 14  --batch 16  --model_name mono_model --png --data_path ./kitti_data
