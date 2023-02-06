FROM tomcat
RUN apt-get update
RUN apt-get install git -y
RUN apt-get install default-jdk -y
RUN apt install maven -y
RUN git clone https://github.com/boxfuse/boxfuse-sample-java-war-hello.git
WORKDIR boxfuse-sample-java-war-hello/
RUN mvn package
CMD ["catalina.sh", "run"]
