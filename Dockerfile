FROM nvidia/cuda:11.2.2-cudnn8-devel-ubuntu20.04

RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys A4B469963BF863CC && \
    apt update && \
    apt install -y python3 python3-pip git vim curl

RUN pip install torch==1.8.0 torchvision==0.9.0 torchaudio==0.8.0 imageio insightface==0.2.1 onnxruntime moviepy onnxruntime-gpu

WORKDIR /ws

ADD ./* ./

