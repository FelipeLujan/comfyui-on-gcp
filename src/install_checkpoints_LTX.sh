#!/bin/bash

# Create necessary directories if they don't exist
mkdir -p ./models/checkpoints/
mkdir -p ./models/text_encoders/
# Create a suggested directory for LTX workflows (assuming ComfyUI is one level up)
mkdir -p ../ComfyUI/workflows/ltx/

# LTX Video Models (v0.9.6)
echo "Downloading LTX Video models (v0.9.6)..."
# Main model
wget -c -O ./models/checkpoints/ltx-video-2b-v0.9.6.safetensors https://huggingface.co/Lightricks/LTX-Video/resolve/main/ltx-video-2b-v0.9.6.safetensors
# Distilled model
wget -c -O ./models/checkpoints/ltx-video-2b-distilled-v0.9.6.safetensors https://huggingface.co/Lightricks/LTX-Video/resolve/main/ltx-video-2b-distilled-v0.9.6.safetensors

# T5 Text Encoder (google_t5-v1_1-xxl_encoderonly)
echo "Downloading T5 text encoder..."
wget -c -O ./models/text_encoders/google_t5-v1_1-xxl_encoderonly.safetensors https://huggingface.co/mcmonkey/google_t5-v1_1-xxl_encoderonly/resolve/main/model.safetensors

echo "LTX Video model downloads complete."
echo "NOTE: Example workflows were not downloaded automatically."
echo "Please download them manually from https://github.com/Lightricks/ComfyUI-LTXVideo?tab=readme-ov-file#example-workflows"
echo "and place them in the ../ComfyUI/workflows/ltx/ directory."



