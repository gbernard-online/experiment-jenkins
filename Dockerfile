FROM alpine:3.17.2
LABEL maintainer=ghislain.bernard@gmail.com

RUN adduser --disabled-password jenkins
RUN apk add --no-cache gcc
