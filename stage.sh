#!/bin/bash

data="https://www.dropbox.com/s/rm7xhk1xbxepcec/project.zip?dl=1"

##Downloading project files from Dropbox for staging##

echo -e "\n\e[1;32mDownloading project files...\e[0m \n"

wget $data -O project.zip

echo -e "\n\e[1;32mDownloading completed\e[0m \n"

echo -e "\n\e[1;32mExtracting Files\e[0m \n"

unzip project.zip

echo -e "\n\e[1;32mDone unzipping files\e[0m \n"

echo -e "\n\e[1;32mCleaning files\e[0m \n"

rm project.zip

echo -e "\n\e[1;32mDone staging\e[0m \n"
