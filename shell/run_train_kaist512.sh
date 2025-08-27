# Resume Training
CUDA_VISIBLE_DEVICES=0,1,2,3 python main.py \
    --base configs/latent-diffusion/PID-KAIST-c=M.yaml \
    -t --gpus 0,1,2,3 \
    --resume ./pretrained/PID-KAIST-c=M/kaist_c_M_resume_training.ckpt

# Training from Scratch:
## Firstly, Train k1=k2=0 as LDM for about 55k iterations, accelerating training process
CUDA_VISIBLE_DEVICES=0,1,2,3 python main.py \
    --base configs/latent-diffusion/PID-KAIST-c=M.yaml \
    -t --gpus 0,1,2,3
## Then, change the k1 and k2 in config for about 5k iterations, optimize the physical features
CUDA_VISIBLE_DEVICES=0,1,2,3 python main.py \
    --base configs/latent-diffusion/PID-KAIST-c=M.yaml \
    -t --gpus 0,1,2,3