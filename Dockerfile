FROM python:3.8
RUN apt-get update -y && apt-get upgrade -y \
    && apt-get install -y --no-install-recommends ffmpeg \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /app

# Copy the application files into the working directory
COPY . /app

# Install the application dependencies
RUN pip install -r requirements.txt
CMD bash start
