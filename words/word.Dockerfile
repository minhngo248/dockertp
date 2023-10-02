FROM ubuntu:latest

RUN apt-get -y update && apt-get -y upgrade
RUN apt-get install -y maven openjdk-8-jdk

WORKDIR /app

COPY ./ /app
RUN mvn verify

# We use the "exec" shell built-in here, to make
# sure that the program executes as PID 1 and
# therefore receives signals correctly.
CMD exec java -Xmx8m -Xms8m -jar target/words.jar