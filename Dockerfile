FROM node:10

COPY entrypoint.sh /entrypoint.sh
RUN chmod 755 /entrypoint.sh

RUN mkdir /output
VOLUME ["/output"]
WORKDIR "/output"

RUN apt update
RUN apt install -y xvfb libnss3 libgtk-3-0 libxss1 libasound2
RUN npm install electron-pdf -g --unsafe-perm

ENTRYPOINT [ "/entrypoint.sh" ]
