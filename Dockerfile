FROM ubuntu:22.04

RUN apt update && apt install -y git python3.10 python3.10-venv libgtk-3-0

RUN git clone https://github.com/lllyasviel/stable-diffusion-webui-forge

WORKDIR /stable-diffusion-webui-forge

RUN ./webui.sh -f --exit

ENTRYPOINT nvidia-smi

CMD ./webui.sh -f --listen
