FROM ubuntu:20.04
RUN apt-get update && apt-get install -y --no-install-recommends git python3 python3-pip python3.8-venv ca-certificates && apt-get clean && rm -rf /var/lib/apt/lists/*
RUN pip install gdown
COPY . /app 
WORKDIR /app
RUN python3 -m venv venv
RUN /bin/bash -c "source venv/bin/activate"
RUN pip install -r requirements.txt