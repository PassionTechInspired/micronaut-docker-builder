FROM adoptopenjdk:14-hotspot

WORKDIR /home/app/demo
COPY . .

RUN ./gradlew dependencies
RUN ./gradlew build
RUN ./gradlew assemble
# RUN ./gradlew build assemble --quiet && \
RUN ./gradlew clean
RUN rm -rf /home/app/demo
