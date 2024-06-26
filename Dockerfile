# Usa a imagem oficial do Node.js baseada no Debian
FROM node:22


ENV MYSQL_IP=172.17.0.3
ENV APP_PORT=3000
ENV MYSQL_DATABASE=BANCO_DADOS_IT_TALENT
ENV MYSQL_USER=root
ENV MYSQL_ROOT_PASSWORD=20252025
ENV MYSQL_PORT=3306

# Define o diretório de trabalho dentro do container
WORKDIR /app

# Copia os arquivos de dependências
COPY package.json package-lock.json ./

# Instala as dependências do projeto
RUN npm install

# Copia o restante do código do aplicativo para o diretório de trabalho
COPY . .

# Expõe a porta 3000 (ou qualquer outra porta que sua aplicação use)
EXPOSE 3000

# Comando para iniciar a aplicação
CMD ["npm", "start"]

