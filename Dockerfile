# Set docker image
FROM ubuntu:18.04

# Skip the configuration part
ENV DEBIAN_FRONTEND noninteractive


# Update and install depedencies
RUN apt-get update && \
    apt-get install -y wget unzip bc vim python3-pip libleptonica-dev git

# Packages to complie Tesseract
RUN apt-get install -y --reinstall make && \
    apt-get install -y g++ autoconf automake libtool pkg-config libpng-dev libjpeg8-dev libtiff5-dev libicu-dev \
    libpango1.0-dev autoconf-archive libcairo2-dev

RUN mkdir /usr/local/share/tessdata

RUN ls

RUN wget -P /usr/local/share/tessdata -i language_list.txt

RUN git clone https://github.com/tesseract-ocr/tessdata_best.git

# Clone the repo files into the docker container
RUN git clone https://github.com/tesseract-ocr/tesseract.git


RUN ls -al

# Set working directory
WORKDIR /tesserat

RUN cd tesserat




# Setting the data prefix
ENV TESSDATA_PREFIX=/usr/local/share/tessdata

# Set the locale
RUN apt-get install -y locales && locale-gen en_US.UTF-8
ENV LC_ALL=en_US.UTF-8
ENV LANG=en_US.UTF-8
ENV LANGUAGE=en_US.UTF-8