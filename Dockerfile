FROM ubuntu:18.04 
RUN apt update && apt full-upgrade -y && apt install -y \
python3 \
python3-pip 
RUN pip3 install --upgrade pip 
RUN pip3 install jupyter
# Installation du Java Dev Kit
RUN apt-get install -y default-jdk \
&& apt-get -y install wget curl unzip 
ENV JAVA_HOME /usr/lib/jvm/java-11-openjdk-amd64/bin/java
RUN export JAVA_HOME
# Telechargement du kernel Java
RUN wget https://github.com/SpencerPark/IJava/releases/download/v1.3.0/ijava-1.3.0.zip
RUN unzip ijava-1.3.0.zip
# Installation du kernel Java 
RUN /bin/bash -c 'python3 install.py'
RUN mkdir /notebooks && /root/.jupyter
COPY jupyter_notebook_config.py /root/.jupyter
# Copie du fichier notebook 
COPY demoIrisJava.ipynb /notebooks
# Copie du jeu de donnees IRIS
COPY Iris.csv /notebooks 
CMD jupyter notebook /notebooks --allow-root
