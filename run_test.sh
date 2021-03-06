code_dir=DTMT
work_dir=$PWD
train_dir=$work_dir/data
export PYTHONPATH=$work_dir/$code_dir:$PYTHONPATH
export CUDA_VISIBLE_DEVICES=0

for idx in `seq 2000 2000 150000` 
do
    echo model_checkpoint_path: \"model.ckpt-$idx\" > $work_dir/train/checkpoint
    cat $work_dir/train/checkpoint
    echo decoding with checkpoint-$idx
    python $work_dir/$code_dir/dtmt/bin/translator.py \
        --models rnnsearch \
        --checkpoints $work_dir/train \
        --input $train_dir/valid_src \
        --output $train_dir/valid_src.out \
	--vocabulary $train_dir/vocab.ch $train_dir/vocab.en \
        --parameters=decode_batch_size=32
    echo evaluating with checkpoint-$idx
    cd $train_dir
    sh eval.sh valid_src.out.delbpe.eval.$idx
    cp valid_src.out.delbpe valid_src.out.delbpe.$idx
    cat valid_src.out.delbpe.eval.$idx
    cd $work_dir
    echo finished of checkpoint-$idx
done
