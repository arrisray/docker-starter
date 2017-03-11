FROM sample/image

RUN apt-get update && apt-get install -y \
    git \
    vim 

CMD ["/sample.sh"]
