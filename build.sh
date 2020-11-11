#!/bin/bash

CGO_ENABLED=0 GOOS=linux go build -ldflags="-s -w" -o webhook-server && \
	docker build -t rogerw/admission-controller-webhook-demo:latest . && \
	docker push rogerw/admission-controller-webhook-demo:latest
