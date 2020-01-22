# Exemple Machine Learning avec Java et Jupyter Notebook (IRIS dataset)

D'après les statistiques , le langage Java est très peu utilisé pour la science de données, loin derrière Python et R.
Ci-après, les détails sur comment utiliser Java dans un exemple d'apprentissage automatique. Nous utiliserons la librairie
Apache spark ML et jupyter notebook pour écrire notre code.

# Pérequis

Afin de faciliter le partage et le test de ce exemple, l'outil de conteneurisation Docker https://www.docker.com/ sera 
utilisé. Il ne reste qu'à installer Docker et construire une image en suivant ces recommandations.

# Installation

## Linux ubuntu

$ sudo apt update
$ sudo apt install apt-transport-https \ ca-certificates \ curl \ gnupg-agent \ software-properties-common

$ curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add - <br />
→ ajoute la clé GPG officielle de Docker <br />

$ sudo apt-key fingerprint 0EBFCD88 <br />
→ vérifier les 8 derniers symbols de l'empreinte

$ sudo add-apt-repository \
"deb [arch=amd64] https://download.docker.com/linux/ubuntu \
 $(lsb_release -cs) \ 
 Stable" <br />
→ ajoute le dépôt stable 

$ sudo apt-get update 
$ sudo apt-get install docker-ce docker-ce-cli containerd.io <br />
→ installe la dernière version de Docker <br />

$ docker --version <br />
$ systemctl status docker

## Sur Windows

https://hub.docker.com/editions/community/docker-ce-desktop-windows

# Mise en oeuvre

* Télécharger ou cloner le présent repertoire contenant le DockerFile
* Se déplacer à la racine du répertoire 
* Construire l'image docker avec la commande **docker build -t <nom_de_votre_image> .**
* Exécution du conteneur avec la commande **docker run -p 8888:8888 <nom_de_votre_image>**

Naviguer vers cette url http://<adresse_ip>:8888/  
Ex: http://localhost:8888/

Voila tout est enfin prêt pour visualiser le notebook machine learning avec Java :).

Joel


# Références

* Cours Mickael Swawola , Ecosystème IA , Cegep Sainte Foy
