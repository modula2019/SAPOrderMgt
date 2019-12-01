FROM node:10.14.0-alpine

LABEL maintainer="Adegbenga Adeye <adegbenga.adeye@outlook.com>"

# ------------------------------------------
# install the adonis CLI
# ------------------------------------------
RUN npm i -g @adonisjs/cli

# ------------------------------------------
# change the working directory
# ------------------------------------------
WORKDIR /usr/app

# ------------------------------------------------------------------------------------
# copy all files and install all dependencies after changing to directory.
# ------------------------------------------------------------------------------------
COPY . .

RUN cd ./ordermgt-api && npm install --quiet && adonis serve --dev

# When building code for production, 
# RUN cd ./ordermgt-api && adonis serve