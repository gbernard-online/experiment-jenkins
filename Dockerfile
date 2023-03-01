FROM alpine:3.17.2
LABEL maintainer=ghislain.bernard@gmail.com

RUN adduser jenkins
RUN apk add --no-cache gcc
