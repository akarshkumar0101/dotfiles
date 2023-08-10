FROM --platform=linux/amd64 python:3.10

# needed for opencv
# RUN apt-get update && apt-get install ffmpeg libsm6 libxext6 -y
# RUN pip install torch==2.0.1
# COPY requirements.txt .
# RUN pip install --no-cache-dir -r requirements.txt

WORKDIR /dotfiles
COPY . /dotfiles/.

CMD echo "hello!"; pwd; ls; which python pip jupyter; lscpu
