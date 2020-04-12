.DEFAULT_GOAL = up
CONTAINER_NAME=deluge

build:
	docker build -t "$(CONTAINER_NAME)" .

run:
	docker run --name="$(CONTAINER_NAME)" -d -v $(pwd)/deluge_config:/config -v $(pwd)/torrents:/torrents -v $(pwd)/inprogress:/inprogress -v $(pwd)/downloads:/downloads $(CONTAINER_NAME)

up: build run
