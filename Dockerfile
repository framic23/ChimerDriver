# Dockerfile for ChimerDriver

FROM python:3.6.12

WORKDIR /app
RUN git clone https://github.com/veneresabrina/ChimerDriver.git
RUN python -m pip install --upgrade pip
RUN cd ChimerDriver && python -m pip install -r requirements.txt
RUN apt install -y nvidia-modprobe
CMD ["python" , "ChimerDriver.py"]
