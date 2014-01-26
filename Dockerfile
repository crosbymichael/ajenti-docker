FROM crosbymichael/python

RUN apt-get install -y wget 
RUN wget http://repo.ajenti.org/debian/key -O- | apt-key add -
RUN echo "deb http://repo.ajenti.org/ng/debian main main ubuntu" >> /etc/apt/sources.list
RUN apt-get update 
RUN apt-get install -y ajenti

EXPOSE 8000
ENTRYPOINT ["ajenti-panel"]
