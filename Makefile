all:
	sudo docker build -t maas-daon/test .

setup:
	sudo apt update && sudo apt -y dist-upgrade
	curl -fsSL https://get.docker.com/ | sh
	sudo curl -L https://github.com/docker/compose/releases/download/1.7.1/docker-compose-`uname -s`-`uname -m` > /tmp/docker-compose
	if [ ! -d /usr/local/bin ]; then sudo mkdir -f /usr/local/bin; fi
	sudo mv /tmp/docker-compose /usr/local/bin/
	sudo chmod +x /usr/local/bin/docker-compose
