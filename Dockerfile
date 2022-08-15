Bootstrap: docker
From: ubuntu:xenial

%runscript
    cd /qupath/QuPath
        ./QuPath

%post
    mkdir /qupath
    cd /qupath
    apt-get update
    apt-get install default-jre
    apt-get install -y wget 
    wget https://github.com/qupath/qupath/archive/refs/tags/v0.3.2.tar.gz
    tar xvvf qupath-0.3.2.tar.gz
    rm qupath-0.3.2.tar.gz