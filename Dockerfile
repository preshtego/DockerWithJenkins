FROM ubuntu:latest

RUN for user in preshtego; do useradd; echo "1234" | passwd $user --stdin; done
RUN apt-get update && apt-get install mysql -y