# Define qual imagem do docker utilizará como base
FROM node:alpine

# Diretório dentro da máquina que utilizará
WORKDIR /usr/app

# COPY serve para copiar os arquivos de dentro da máquina para o container do Docker
COPY package*.json ./

# RUN executa o comando dentro do docker
RUN npm install

# Copia todos os arquivos para dentro do container (Não copiará o node_modules, definido pelo .dockerignore)
COPY . .

# Qual porta que será exposta
EXPOSE 3000

# Deve ser executado apenas uma vez, e qual será o comando que deverá ser usado para a aplicação startar (Colocado em array)
CMD ["npm", "start"]