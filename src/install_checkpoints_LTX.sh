#!/bin/bash

# Create necessary directories if they don't exist
mkdir -p ./models/checkpoints/
mkdir -p ./models/text_encoders/

# LTX Video Models
echo "Downloading LTX Video models..."
wget -c -O ./models/checkpoints/ltx-video-2b-v0.9.5.safetensors https://huggingface.co/Lightricks/LTX-Video/resolve/main/ltx-video-2b-v0.9.5.safetensors
wget -c -O ./models/text_encoders/t5xxl_fp16.safetensors https://huggingface.co/Comfy-Org/mochi_preview_repackaged/resolve/main/split_files/text_encoders/t5xxl_fp16.safetensors

echo "LTX Video model downloads complete."



