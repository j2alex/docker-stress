FROM ubuntu

RUN apt-get update && apt-get install stress -y

ENTRYPOINT ["stress","--cpu","1","--vm","1","--vm-bytes","512M","--vm-hang","0"]
