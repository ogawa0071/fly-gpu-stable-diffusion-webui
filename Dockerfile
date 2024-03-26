FROM ubuntu:22.04

RUN apt update && apt install -y git python3.10 python3.10-venv libglib2.0-0 libgl1-mesa-glx

WORKDIR /app

CMD nvidia-smi && git clone https://github.com/lllyasviel/stable-diffusion-webui-forge stable-diffusion-webui ; cd ./stable-diffusion-webui && ./webui.sh -f --listen --enable-insecure-extension-access
