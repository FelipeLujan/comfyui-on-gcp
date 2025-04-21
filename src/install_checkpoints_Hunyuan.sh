#!/bin/bash

# Create necessary directories if they don't exist
mkdir -p ./models/text_encoders/
mkdir -p ./models/vae/
mkdir -p ./models/diffusion_models/
mkdir -p ./models/clip_vision/

# Hunyuan Video Common Files
echo "Downloading Hunyuan Video common files..."
wget -c -O ./models/text_encoders/clip_l.safetensors https://huggingface.co/Comfy-Org/HunyuanVideo_repackaged/resolve/main/split_files/text_encoders/clip_l.safetensors
wget -c -O ./models/text_encoders/llava_llama3_fp8_scaled.safetensors https://huggingface.co/Comfy-Org/HunyuanVideo_repackaged/resolve/main/split_files/text_encoders/llava_llama3_fp8_scaled.safetensors
wget -c -O ./models/vae/hunyuan_video_vae_bf16.safetensors https://huggingface.co/Comfy-Org/HunyuanVideo_repackaged/resolve/main/split_files/vae/hunyuan_video_vae_bf16.safetensors

# Hunyuan Text-to-Video Model
echo "Downloading Hunyuan Text-to-Video model..."
wget -c -O ./models/diffusion_models/hunyuan_video_t2v_720p_bf16.safetensors https://huggingface.co/Comfy-Org/HunyuanVideo_repackaged/resolve/main/split_files/diffusion_models/hunyuan_video_t2v_720p_bf16.safetensors

# Hunyuan Image-to-Video Models
echo "Downloading Hunyuan Image-to-Video models..."
wget -c -O ./models/clip_vision/llava_llama3_vision.safetensors https://huggingface.co/Comfy-Org/HunyuanVideo_repackaged/resolve/main/split_files/clip_vision/llava_llama3_vision.safetensors
# v1 "concat" model
wget -c -O ./models/diffusion_models/hunyuan_video_image_to_video_720p_bf16.safetensors https://huggingface.co/Comfy-Org/HunyuanVideo_repackaged/resolve/main/split_files/diffusion_models/hunyuan_video_image_to_video_720p_bf16.safetensors
# v2 "replace" model
wget -c -O ./models/diffusion_models/hunyuan_video_v2_replace_image_to_video_720p_bf16.safetensors https://huggingface.co/Comfy-Org/HunyuanVideo_repackaged/resolve/main/split_files/diffusion_models/hunyuan_video_v2_replace_image_to_video_720p_bf16.safetensors

echo "Hunyuan Video model downloads complete."

