FROM tensorflow/tensorflow:1.3.0-gpu-py3

RUN apt-get update \
    && apt-get install -y \
        build-essential \
        cmake \
        git \
        wget \
        unzip \
        yasm \
        pkg-config \
        libswscale-dev \
        libtbb2 \
        libtbb-dev \
        libjpeg-dev \
        libpng-dev \
        libtiff-dev \
        libavformat-dev \
        libpq-dev \
        vim \
    && rm -rf /var/lib/apt/lists/*

RUN pip install wheel
RUN pip install --upgrade pip

RUN pip install easydict==1.6
RUN pip install matplotlib==2.0.2
RUN pip install glog==0.3.1
RUN pip install opencv_python==3.2.0.7
RUN pip install opencv-contrib-python
RUN pip install numpy==1.13.1
RUN pip install scikit_learn==0.19.1
