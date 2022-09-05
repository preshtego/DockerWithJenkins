FROM ubuntu

#RUN for user in preshtego; do useradd; echo "preshtego" | passwd $user --stdin; done
RUN apt-get update && apt-get install mysql -y