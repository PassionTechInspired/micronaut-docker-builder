FROM adoptopenjdk:15-hotspot

RUN apt update && \
    apt install git -y && \
    apt clean

WORKDIR /app/

COPY . .

RUN ./gradlew dependencies assemble build --quiet

RUN ./gradlew clean && rm -rf /app/
