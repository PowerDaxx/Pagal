FROM python:3.10-slim


RUN apt-get update && \
    apt-get install -y --no-install-recommends \
        git \
        curl \
        ffmpeg \
        nodejs && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*


WORKDIR /app
COPY . .

RUN pip3 install --no-cache-dir --upgrade pip
RUN pip3 install --no-cache-dir -r requirements.txt


CMD ["bash", "start"]