# Usar uma imagem base do Node.js
FROM node:16

# Definir o diretório de trabalho dentro do container
WORKDIR /app

# Copiar o package.json e o package-lock.json para o contêiner
COPY package*.json ./

# Instalar as dependências do projeto
RUN npm install

# Copiar todos os arquivos do projeto para o diretório de trabalho do contêiner
COPY . .

# Expôr a porta que o servidor irá rodar
EXPOSE 3000

# Definir o comando para rodar o servidor
CMD ["npm", "start"]
