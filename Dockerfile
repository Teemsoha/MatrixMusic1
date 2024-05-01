FROM python:3.9-buster
RUN apt-get update -y && apt-get upgrade -y \
    && apt-get install -y --no-install-recommends ffmpeg \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /app/

RUN pip3 install --no-cache-dir --upgrade --requirement requirements.txt
CMD bash start
