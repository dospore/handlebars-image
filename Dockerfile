from node:12

ARG D=default

ENV DATABASE_URL=$D

WORKDIR /usr

COPY . ./

RUN npm install

EXPOSE 4873

CMD ["node", "index.js"]