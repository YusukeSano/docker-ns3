CONTAINER_NAME := ns3
IMAGE_NAME := ns-allinone-3.36.1

build: Dockerfile install.sh requirements.sh
	docker build -t $(IMAGE_NAME) .
	docker create --name $(CONTAINER_NAME) -it -e DISPLAY=host.docker.internal:0 $(IMAGE_NAME)

start:
	docker start -ai $(CONTAINER_NAME)

remove:
	docker rm $(CONTAINER_NAME)
	docker image rm $(IMAGE_NAME)

visualize:
	open -a XQuartz
	socat TCP-LISTEN:6000,reuseaddr,fork UNIX-CLIENT:\"$DISPLAY\"
