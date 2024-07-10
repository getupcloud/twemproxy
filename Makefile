IMAGE_TAG  ?= latest
IMAGE_NAME ?= ghcr.io/getupcloud/twemproxy
IMAGE      := $(IMAGE_NAME):$(IMAGE_TAG)

all: build push

build:
	docker build . -t $(IMAGE) $(ARGS)

push:
	docker push $(IMAGE) $(ARGS)
