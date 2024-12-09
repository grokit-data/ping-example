# ARG IMAGE=paraflow-sim:${PARAFLOW_VERSION}
ARG PARAFLOW_VERSION=latest
ARG REGISTRY=ghcr.io/grokit-data/

FROM --platform=linux/amd64 ${REGISTRY}paraflow/paraflow-sim:${PARAFLOW_VERSION} AS base
WORKDIR /paraflow

FROM base as build

ARG PARAFLOW_FILE="debug.paraflow"
ARG SQL_FILES="debug.sql"

COPY --from=copy_paraflow ${PARAFLOW_FILE} ./actor/
COPY --from=copy_sql ${SQL_FILES} ./actor/
