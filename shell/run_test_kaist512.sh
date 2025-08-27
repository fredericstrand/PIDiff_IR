python scripts/rgb2ir_vqf8.py --steps 200 \
    --indir ./dataset/KAIST512/visible \
    --outdir ./results/ \
    --config configs/latent-diffusion/PID-KAIST-c=M.yaml \
    --checkpoint ./pretrained/PID-KAIST-c=M/kaist_c_M.ckpt \
    --ddim_eta 0.0