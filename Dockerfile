# syntax=docker/dockerfile:1

#FROM python:latest
FROM nvcr.io/nvidia/pytorch:24.01-py3

COPY . .

RUN pip3 install --upgrade pip
RUN pip3 install -r requirements.txt

ENV TRANSFORMERS_CACHE=/hf_cache/

#RUN python3 ./save_hf_model.py
#sudo docker run --gpus all -it --rm -v /home/waggle/images:/images -v /home/waggle/.cache/huggingface:/hf_cache -v /home/waggle/RESULTS:/RESULTS hfsandbox:latest

ENTRYPOINT ["python", "smokedataset_QA_13b-hf_model.py"]
