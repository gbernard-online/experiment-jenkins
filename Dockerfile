FROM alpine:3.17.2
LABEL maintainer=ghislain.bernard@gmail.com

RUN addgroup -g 1000 jenkins
RUN apk add --no-cache gcc
