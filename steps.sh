#!/usr/bin/env bash
sudo apt update
sudo apt install ttf-mscorefonts-installer
sudo apt install fonts-dejavu
sudo apt install fontconfig
fc-cache -vf

echo dependency instalation complete

mkdir ~/tesstutorial
cd ~/tesstutorial

mkdir langdata
cd langdata
wget https://raw.githubusercontent.com/tesseract-ocr/langdata_lstm/master/radical-stroke.txt
wget https://raw.githubusercontent.com/tesseract-ocr/langdata_lstm/master/common.punc
wget https://raw.githubusercontent.com/tesseract-ocr/langdata_lstm/master/font_properties
wget https://raw.githubusercontent.com/tesseract-ocr/langdata_lstm/master/Latin.unicharset
wget https://raw.githubusercontent.com/tesseract-ocr/langdata_lstm/master/Latin.xheights

mkdir eng
cd eng

wget https://raw.githubusercontent.com/tesseract-ocr/langdata/master/eng/eng.training_text
wget https://raw.githubusercontent.com/tesseract-ocr/langdata/master/eng/eng.punc
wget https://raw.githubusercontent.com/tesseract-ocr/langdata/master/eng/eng.numbers
wget https://raw.githubusercontent.com/tesseract-ocr/langdata/master/eng/eng.wordlist

cd ~/tesstutorial
git clone --depth 1 https://github.com/tesseract-ocr/tesseract.git
cd tesseract/tessdata

wget https://github.com/tesseract-ocr/tessdata/raw/master/eng.traineddata
wget https://github.com/tesseract-ocr/tessdata/raw/master/osd.traineddata
mkdir best
cd best
wget https://github.com/tesseract-ocr/tessdata_best/raw/master/eng.traineddata
wget https://github.com/tesseract-ocr/tessdata_best/raw/master/heb.traineddata
wget https://github.com/tesseract-ocr/tessdata_best/raw/master/chi_sim.traineddata


