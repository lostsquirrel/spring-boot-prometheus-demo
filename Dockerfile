FROM registry.lisong.pub:5000/sunrise/maven:3.5.3-server-jre-8 as builder
COPY --chown=1000:1000 . /build/
WORKDIR /build
USER jenkins
RUN mvn package

FROM registry.lisong.pub:5000/lisong/java:8_server-jre_debug
VOLUME /tmp
ARG JAR_FILE
COPY --from=builder /build/${JAR_FILE} app.jar
RUN bash -c 'touch /app.jar'
EXPOSE 8080
ENV JAVA_OPTS=""
ENTRYPOINT ["java -Djava.security.egd=file:/dev/./urandom -jar /app.jar"]