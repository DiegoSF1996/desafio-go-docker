# exemplo de otimização
# uso a imagem do golang como base e dou um apelido 
# o apelido serve para o multistage do docker
FROM golang:1.24 AS builder_1

WORKDIR /app
# copio o hello world que tenho em minha pasta local
COPY hello.go .
# inicio um projeto go
RUN go mod init example/hello
# compilo o projeto, dessa forma gerando o binário
RUN go build -o hello

# crio uma imagem do zero
FROM scratch
# faço uma cópia do binário gerado no estágio anterior
COPY --from=builder_1 /app/hello /
# executo o binário
CMD ["/hello"]
