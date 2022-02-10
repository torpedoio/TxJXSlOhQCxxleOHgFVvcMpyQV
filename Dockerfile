FROM python:3

COPY . .

RUN apt-get update && apt upgrade -y && apt-get install sudo apt-utils -y
RUN apt-get install -y \
    bash \
    gcc \
    zip \ 
    ffmpeg \
    wget \
    wkhtmltopdf \
    neofetch \
    mediainfo \
    git \
    jq \
    unzip \
    python3-dev \
    p7zip-full

RUN bash run.sh && pip3 install av --no-binary av

CMD ["python3", "RUN.py"]
