# StackedDTMT
Stacked Encoder Enhanced Deep Transition RNMT (https://arxiv.org/abs/1812.07807).

## Contents
* [Introduction](#introduction)
* [Usage](#usage)
* [Requirements](#requirements)
* [Citation](#citation)

## Introduction

The implementation is based on [THUMT] (https://github.com/THUNLP-MT/THUMT).

## Usage
+ Training

```
sh run_train.sh
```

+ Evaluation and Testing

```
sh run_test.sh
```

## Requirements

+ tensorflow 1.10
+ python 2.7 

## Citation

Please cite the following paper if you use the code:

```
@inproceedings{meng2019dtmt,
  title={{DTMT:} {A} novel deep transition architecture for neural machine translation},
  author={Meng, Fandong and Zhang, Jinchao},
  booktitle={Proceedings of the AAAI Conference on Artificial Intelligence},
  volume={33},
  pages={224--231},
  year={2019}
}
```
