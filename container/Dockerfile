FROM pytorch/pytorch:1.9.0-cuda11.1-cudnn8-runtime

WORKDIR /workspace

ENV TZ=Asia/Tokyo
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

RUN apt update
RUN apt install -y make \
    libopencv-dev

COPY requirements.txt .

RUN pip install --upgrade pip
RUN pip install -r requirements.txt

CMD [ "/bin/bash" ]