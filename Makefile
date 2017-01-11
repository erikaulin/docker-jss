SHELL:=/bin/bash

default: run

run:
	docker-compose up --build
	docker-compose -f docker-compose.yml up -d

stop:
	docker-compose -f docker-compose.yml stop || true

clean:
	docker-compose -f docker-compose.yml kill || true
	docker-compose -f docker-compose.yml rm -f || true
	docker rmi dockerjss_jss || true
