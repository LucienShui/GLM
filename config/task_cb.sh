EXPERIMENT_NAME=blank-base-CB
TASK_NAME=cb
DATA_PATH="/root/data/superglue/CB"
MAX_SEQ_LEN=256
source config/task_blocklm.sh

TRAIN_ARGS="--epochs 20 \
            --batch-size 8 \
            --lr 1e-5 \
            --lr-decay-style linear \
            --warmup 0.06 \
            --weight-decay 1.0e-1"

COMMON_ARGS="--save-interval 10000 \
             --log-interval 50 \
             --eval-interval 1000 \
             --eval-iters 100"