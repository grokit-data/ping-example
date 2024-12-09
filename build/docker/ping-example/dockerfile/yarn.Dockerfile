FROM node:18-alpine

WORKDIR /app

COPY --from=actor package.json yarn.lock ./

RUN yarn install --frozen-lockfile

COPY --from=actor . .

ARG COMMAND=start

CMD yarn ${COMMAND}