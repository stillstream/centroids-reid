# @description:
# @Author: KevinW
# @Time: Oct 10, 2022

#market1501
#CUDA_VISIBLE_DEVICES=0 python3 train_ctl_model.py \
#--config_file="configs/256_resnet50.yml" \
#GPU_IDS [0] \
#DATASETS.NAMES 'market1501' \
#DATASETS.ROOT_DIR '/mnt/large_disk/docker_volume/dataset/reid/' \
#SOLVER.IMS_PER_BATCH 16 \
#TEST.IMS_PER_BATCH 128 \
#SOLVER.BASE_LR 0.00035 \
#OUTPUT_DIR './logs/market1501/256_resnet50/' \
#SOLVER.EVAL_PERIOD 40 \
## for test
#TEST.ONLY_TEST True \
#MODEL.PRETRAIN_PATH "models/market1501_resnet50_256_128_epoch_120.ckpt"

# dukemtmcreid
CUDA_VISIBLE_DEVICES=0 python3 train_ctl_model.py \
--config_file="configs/256_resnet50.yml" \
GPU_IDS [0] \
DATASETS.NAMES 'dukemtmcreid' \
DATASETS.ROOT_DIR '/mnt/large_disk/docker_volume/dataset/reid/' \
SOLVER.IMS_PER_BATCH 16 \
TEST.IMS_PER_BATCH 128 \
SOLVER.BASE_LR 0.00035 \
OUTPUT_DIR './logs/dukemtmcreid/256_resnet50' \
DATALOADER.USE_RESAMPLING False