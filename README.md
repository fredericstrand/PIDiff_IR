# PID: Physics-Informed Diffusion Model for Infrared Image Generation

<img src="PID.png" alt="PID" style="zoom:50%;" />

## Update 

* 2025/05 The paper is accepted by Pattern Recognition: https://doi.org/10.1016/j.patcog.2025.111816
* We have released our code.

## Environment

It is recommended to install the environment with environment.yaml. 

```bash
conda env create --file=environment.yaml
```

## Datasets

Download **KAIST** dataset from https://github.com/SoonminHwang/rgbt-ped-detection

Download **FLIRv1** dataset from https://www.flir.com/oem/adas/adas-dataset-form/

Download **VEDAI** dataset from https://downloads.greyc.fr/vedai/

We adopt the official dataset split in our experiments.

## Checkpoint

VQGAN can be downloaded from https://ommer-lab.com/files/latent-diffusion/vq-f8.zip (Other GAN models can be downloaded from https://github.com/CompVis/latent-diffusion).

TeVNet and PID heckpoints can be found in [HuggingFace](https://huggingface.co/FerrisMao/PID).

## Evaluation

Use the shellscript to evaluate. `indir` is the input directory of visible RGB images, `outdir` is the output directory of translated infrared images, `config` is the chosen config in `configs/latent-diffusion/config.yaml`.  We prepare some RGB images in `dataset/KAIST` for quick evaluation.

```sh
bash run_test_kaist512_vqf8.sh
```

## Train

### Dataset preparation

Prepare corresponding RGB and infrared images with same names in two directories.

### Stage 1: Train TeVNet

```bash
cd TeVNet
bash shell/train.sh
```

### Stage 2: Train PID

To accelerate training, we recommend using our pretrained model. 

```bash
bash shell/run_train_kaist512_vqf8.sh
```

## Acknowledgements

Our code is built upon [LDM](https://github.com/CompVis/latent-diffusion) and [HADAR](https://github.com/FanglinBao/HADAR). We thank the authors for their excellent work.

## Citation

If you find this work is helpful in your research, please consider citing our paper:

```
@article{mao2026pid,
  title={PID: physics-informed diffusion model for infrared image generation},
  author={Mao, Fangyuan and Mei, Jilin and Lu, Shun and Liu, Fuyang and Chen, Liang and Zhao, Fangzhou and Hu, Yu},
  journal={Pattern Recognition},
  volume={169},
  pages={111816},
  year={2026},
  publisher={Elsevier}
}
```

If you have any question, feel free to contact maofangyuan23s@ict.ac.cn.
