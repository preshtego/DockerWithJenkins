FROM openjdk:8

#RUN for user in preshtego; do useradd; echo "preshtego" | passwd $user --stdin; done
RUN apt-get update