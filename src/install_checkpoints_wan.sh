#!/bin/bash
# Create necessary directories if they don't exist
mkdir -p ./models/text_encoders/
mkdir -p ./models/vae/
mkdir -p ./models/diffusion_models/
mkdir -p ./models/clip_vision/

# Wan 2.1 Common Files
echo "Downloading Wan 2.1 common files..."
aria2c -c -x 16 -s 16 -d ./models/text_encoders/ -o umt5_xxl_fp8_e4m3fn_scaled.safetensors https://huggingface.co/Comfy-Org/Wan_2.1_ComfyUI_repackaged/resolve/main/split_files/text_encoders/umt5_xxl_fp8_e4m3fn_scaled.safetensors
aria2c -c -x 16 -s 16 -d ./models/vae/ -o wan_2.1_vae.safetensors https://huggingface.co/Comfy-Org/Wan_2.1_ComfyUI_repackaged/resolve/main/split_files/vae/wan_2.1_vae.safetensors

# Wan 2.1 Text-to-Video Model
echo "Downloading Wan 2.1 Text-to-Video model..."
aria2c -c -x 16 -s 16 -d ./models/diffusion_models/ -o wan2.1_t2v_1.3B_fp16.safetensors https://huggingface.co/Comfy-Org/Wan_2.1_ComfyUI_repackaged/resolve/main/split_files/diffusion_models/wan2.1_t2v_1.3B_fp16.safetensors

# Wan 2.1 Image-to-Video Models
echo "Downloading Wan 2.1 Image-to-Video models..."
aria2c -c -x 16 -s 16 -d ./models/diffusion_models/ -o wan2.1_i2v_480p_14B_fp16.safetensors https://huggingface.co/Comfy-Org/Wan_2.1_ComfyUI_repackaged/resolve/main/split_files/diffusion_models/wan2.1_i2v_480p_14B_fp16.safetensors
aria2c -c -x 16 -s 16 -d ./models/clip_vision/ -o clip_vision_h.safetensors https://huggingface.co/stabilityai/stable-diffusion-3-medium/resolve/main/clip_vision_h.safetensors

echo "Wan 2.1 model downloads complete."

# Removed old download logic and unrelated models













