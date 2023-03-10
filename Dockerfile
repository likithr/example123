FROM golang:1.20rc2-bullseye

ADD ./ /src
WORKDIR /src
RUN go install github.com/form3tech/innsecure/cmd/innsecure

RUN useradd -u 1200 builder

EXPOSE 8080

ENTRYPOINT ["innsecure"]
