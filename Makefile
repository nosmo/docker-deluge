.DEFAULT_GOAL=up
CONTAINER_NAME=deluge

build:
	docker build -t "$(CONTAINER_NAME)" .

run:
	docker run --name="$(CONTAINER_NAME)" -p 58846 -p 6881 -d -v $(shell pwd)/deluge_config:/config -v $(shell pwd)/torrents:/torrents -v $(shell pwd)/inprogress:/inprogress -v $(shell pwd)/downloads:/downloads $(CONTAINER_NAME) -L info

up: build run
