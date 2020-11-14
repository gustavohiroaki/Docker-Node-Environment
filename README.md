# Ambiente de desenvolvimento utilizando Docker para Node.js

Neste repositório contém uma simples aplicação, onde roda apenas um hello world com express, e o objetivo é criar o ambiente de desenvolvimento dentro do Docker, para que o ambiente de todas pessoas sejam configurados igualmente.

# Requisitos

- Docker Compose
- Docker

## Dockerfile

O Dockerfile consiste em um arquivo, onde contém instruções de como o docker deverá expor e quais comandos deverá utilizar para a aplicação funcionar.

Siga o exemplo dentro do Dockerfile, pois está todo comentado.

## Build

Para buildar o docker, é necessário executar o seguinte comando:

```
docker build -t gustavohiroaki/docker_node_environment .
```

Que significa que fará o build, -t indica onde, e o ponto indica onde está localizado o Dockerfile.

## Executar

Para rodar a aplicação, é necessário executar o seguinte comando:

```
docker run -p 3005:3000 -d gustavohiroaki/docker_node_environment
```

- -p indica que encaminhará a porta 3000 para a porta 3005.
  (Porta que será executada na máquina será 3005)
- -d indica o modo dettach

# Adicionais

Para desenvolver, é necessário que o ambiente "ouça" por atualizações no código, e atualize automaticamente tudo aquilo que está sendo alterado, e como adicional, será abordado como são realizadas estas atividades.

Utilizando o docker compose, que é o orquestrador, ou seja, o software que define como cada container irá comportar dentro da aplicação, torna-se capaz realizar isso.

Recurso utilizado será o de Volume.

## docker-compose.yml

docker-compose.yml é similar ao Dockerfile, contém também instruções de como irá orquestrar as máquinas, neste caso, há também especificação de como é o volume da máquina.

## Execução do docker-compose

Para executar o docker-compose, basta utilizar:

```
docker-compose up
```
