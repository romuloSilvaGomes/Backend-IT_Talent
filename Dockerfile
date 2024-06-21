# Usa a imagem oficial do Node.js baseada no Debian
FROM node:22

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

