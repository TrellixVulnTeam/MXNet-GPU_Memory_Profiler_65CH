#!/bin/bash -e

cd $(cd $(dirname $0) && pwd)

python3 finetune_classifier.py --batch_size 32 --lr 2e-5 \
	                       --epochs 5 --gpu 0 \
			       --seed 27 --task_name MRPC --warmup_ratio 0.1
