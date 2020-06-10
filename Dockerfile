FROM store/progresssoftware/oedb:12.2.0_adv-ent

USER root

RUN yum update -y \
  && yum install -y \
  ant \
  && yum clean all
ENV JAVA_HOME=/usr/lib/jvm/java-1.8.0-openjdk-1.8.0.252.b09-2.el7_8.x86_64/jre/

WORKDIR /build/

COPY src /build/src
COPY tests /build/tests
COPY tools /build/tools
COPY build.xml /build/
COPY macrodefs.xml /build/
COPY *.properties /build/
