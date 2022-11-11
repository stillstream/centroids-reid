# @description:
# @Author: KevinW
# @Time: Oct 11, 2022

# create embedding
#python3 inference/create_embeddings.py \
#--config_file="configs/256_resnet50.yml" \
#GPU_IDS [0] \
#DATASETS.ROOT_DIR '/mnt/large_disk/docker_volume/dataset/drone_test/phone_images/02_ctl_2/aug_dimp/aug_dimp/' \
#TEST.IMS_PER_BATCH 128 \
#OUTPUT_DIR 'output-dir' \
#TEST.ONLY_TEST True \
#MODEL.PRETRAIN_PATH "models/market1501_resnet50_256_128_epoch_120.ckpt"

# start get similarity
python3 inference/get_similar.py \
--config_file="configs/256_resnet50.yml" \
--gallery_data='output-dir' \
--normalize_features \
--topk=100 \
GPU_IDS [0] \
DATASETS.ROOT_DIR '/mnt/large_disk/docker_volume/dataset/drone_test/phone_images/02_ctl_2/test_track/1-102'  \
TEST.IMS_PER_BATCH 128 \
OUTPUT_DIR 'output-dir' \
TEST.ONLY_TEST True \
MODEL.PRETRAIN_PATH "models/market1501_resnet50_256_128_epoch_120.ckpt" \
SOLVER.DISTANCE_FUNC 'cosine'

