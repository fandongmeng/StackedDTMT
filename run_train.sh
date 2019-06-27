code_dir=DTMT
work_dir=$PWD
train_dir=$work_dir/data
export PYTHONPATH=$work_dir/$code_dir:$PYTHONPATH

python $work_dir/$code_dir/dtmt/bin/trainer.py \
  --model rnnsearch \
  --output $work_dir/train \
  --input $train_dir/train_bpe.ch $train_dir/train_bpe.en \
  --vocabulary $train_dir/vocab.ch $train_dir/vocab.en \
  --validation $train_dir/valid_src \
  --references $train_dir/valid_trg.0 $train_dir/valid_trg.1 $train_dir/valid_trg.2 $train_dir/valid_trg.3 \
  --parameters=device_list=[0,1],eval_steps=10000000,train_steps=150000,batch_size=4096,max_length=128,constant_batch_size=False,embedding_size=1024,learning_rate=6e-4,learning_rate_decay=rnnplus_warmup_decay,warmup_steps=50,s=8000,e=120000,adam_epsilon=1e-6

