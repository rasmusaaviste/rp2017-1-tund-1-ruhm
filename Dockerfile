# tries to find and install image
FROM node:8

# creates directory inside image
RUN mkdir /var/app
WORKDIR /var/app

# copies json and installs npm packages in container
COPY package.json /var/app/package.json
COPY package-lock.json /var/app/package-lock.json
RUN npm install

VOLUME /var/app