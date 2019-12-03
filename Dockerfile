FROM node:10

LABEL maintainer="Adegbenga Adeye <adegbenga.adeye@outlook.com>"

# ------------------------------------------
# change the working directory
# ------------------------------------------
WORKDIR /app

# ------------------------------------------------------------------------------------
# copy all files and install all dependencies after changing to directory.
# ------------------------------------------------------------------------------------
COPY . .

# ------------------------------------------
# install the adonis CLI
# ------------------------------------------
RUN npm i -g @adonisjs/cli