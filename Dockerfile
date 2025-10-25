

FROM node:18-alpine


WORKDIR /app

COPY package*.json ./


RUN npm install


RUN npm install -g http-server


COPY . .


EXPOSE 8080


CMD ["http-server", "-p", "8080", "-a", "0.0.0.0"]