FROM kalilinux/kali-rolling

RUN apt-get update && apt-get install -y apache2 nmap netcat.traditional && apt -y install openssh-server 
RUN apt install net-tools
RUN apt install sudo

COPY index.html /var/www/html/index.html

RUN useradd ctfplayer -m && echo 'ctfplayer:CtFpLaYeR' | chpasswd && usermod -aG sudo ctfplayer
RUN apt-get update && apt-get install -y procps

RUN sed -i 's/Listen 80/Listen 0.0.0.0:80/' /etc/apache2/ports.conf

EXPOSE 22 80

CMD service ssh start;apachectl -D FOREGROUND

COPY welcome.sh /etc/profile.d/welcome.sh

COPY Ubuntu.txt /home/ctfplayer/Ubuntu.txt
COPY metasploit.txt /home/ctfplayer/metasploit.txt
COPY WindowsXP.txt /home/ctfplayer/WindowsXP.txt
COPY Windows7.txt /home/ctfplayer/Windows7.txt
COPY linux.txt /home/ctfplayer/linux.txt

#CMD ["apachectl", "-D", "FOREGROUND"]
