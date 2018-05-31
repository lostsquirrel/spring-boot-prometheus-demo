SHELL=/bin/bash

# if use another registry add  REGISTRY=registry.lisong.pub:5000 to ~/.bashrc
ifndef REGISTRY
    REGISTRY=registry.cn-hangzhou.aliyuncs.com
endif

REGISTRY_NAMESPACE=lisong
PROJECT_NAME=prometheus-demo
VERSION=1.0-SNAPSHOT

IMAGE_TAG=$(VERSION).$(shell git rev-parse --short HEAD)
IMAGE=$(REGISTRY)/$(REGISTRY_NAMESPACE)/$(PROJECT_NAME)
VERSIONED_IMAGE=$(IMAGE):$(IMAGE_TAG)
JAR_FILE=target/$(PROJECT_NAME)-$(VERSION).jar

export VERSIONED_IMAGE
export PROJECT_NAME
export PROJECT_PORT=8086
export PROJECT_REPLICAS=1
export JAR_FILE

# 登陆registry

# Push to registry. 推送到远程仓库
push:
	docker push $(VERSIONED_IMAGE)

pull:
	docker pull $(VERSIONED_IMAGE)
code:
	git reset --hard HEAD && git pull
package:
	rm -f k8s.yaml
build: package
	docker build --no-cache -t $(VERSIONED_IMAGE) \
	--build-arg JAR_FILE=$(JAR_FILE) \
	.

test:
	docker run --rm  $(VERSIONED_IMAGE)

config:
	envsubst < "k8s.yaml.in" > "k8s.yaml"

start: config push
	kubectl apply -f k8s.yaml

start-compose:
	docker-compose up -d

remove-compose:
	docker-compose rm


.PHONY: push pull package build test start config