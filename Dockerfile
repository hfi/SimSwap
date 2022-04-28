FROM nvcr.io/nvidia/pytorch:22.03-py3

RUN pip install -y pytorch==1.8.0 torchvision==0.9.0 torchaudio==0.8.0 cudatoolkit=10.2 imageio insightface==0.2.1 onnxruntime moviepy onnxruntime-gpu

