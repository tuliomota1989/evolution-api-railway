FROM node:18-alpine

WORKDIR /app

COPY . .

RUN npm install

ARG DATABASE_PROVIDER
ENV DATABASE_PROVIDER=${DATABASE_PROVIDER}

RUN npm run build

EXPOSE 3000

CMD ["npm", "start"]
