# CTF-561
For cs561 course project requirement

Requirements : We need to have one folder containing 3 items:
1. docker-compose.yml
2. CTF-Kali (a sub-folder that contains all the files in branch CTF-Kali)
3. CTF-ubuntu (a subfolder that contains all the files in branch CTF-ubuntu)

Below are the steps to build the docker container :

Step1: 
Build the image by changing to this directory and running:
"sudo docker compose build"

Step2: 
Then bring the containers up by running the below command
"sudo docker compose up -d"

Step3:
Ensure that there are 2 dockers running using the below command:
sudo docker ps 
