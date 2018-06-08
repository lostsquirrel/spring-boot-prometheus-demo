SHELL=/bin/bash

start:
	docker-compose up -d

restart:
	docker-compose restart

up:
	docker-compose up -d

stop:
	docker-compose stop

remove: stop
	docker-compose rm


# docker rmi -f $(docker images -f "dangling=true" -q)
.PHONY: start restart stop remove
