FROM ubuntu

# Create a hidden file named "flag.txt"
#RUN touch /root/.flag.txt

COPY flag.txt /root/.flag.txt

# Allow listing of hidden files
RUN echo "alias ls='ls -alhF --color=auto'" >> /root/.bashrc

# Install netcat
RUN apt update
RUN apt install -y netcat-traditional

#Start netcat listening on port 3333 and execute /bin/bash
CMD ["nc", "-lvp", "3333", "-e", "/bin/bash"]
