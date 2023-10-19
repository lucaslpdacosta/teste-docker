FROM nginx:latest

WORKDIR /app/apiv1

RUN apt-get update && apt-get upgrade -y && apt-get install python3 telnet git -y

RUN git clone https://github.com/lucaslpdacosta/teste-docker.git /app/apiv1 && /bin/bash

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]