FROM docker.io/eclipse-temurin:19 AS build
COPY . /app

WORKDIR /app

RUN ./gradlew -i clean installDist

FROM docker.io/eclipse-temurin:19


WORKDIR /app

COPY --from=build /app/build/install/wsrv2 /app/

COPY ./service-matrix.properties /app/service-matrix.properties
COPY ./signatory.conf /app/signatory.conf
COPY ./fsStore.conf /app/fsStore.conf

EXPOSE 7000 7001 7002 7003 7004

ENTRYPOINT ["bin/wsrv2"]
