FROM node:18-alpine

WORKDIR /app

COPY --from=actor package*.json ./

RUN npm install

COPY --from=actor . .

ARG COMMAND=start

CMD npm run ${COMMAND}
