FROM hseeberger/scala-sbt:11.0.3_1.2.8_2.12.9
RUN \
apt-get update -y && \
apt-get install curl -y && \
apt-get install unzip -y

RUN curl -sL https://deb.nodesource.com/setup_4.x | bash
RUN apt-get install nodejs

RUN npm install -g quicktype

ADD build/libs/json-schema-avro-0.1.5-SNAPSHOT-all.jar /json-schema-avro.jar