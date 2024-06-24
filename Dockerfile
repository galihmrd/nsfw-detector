FROM mhart/alpine-node

########## heroku ###########
ADD ./ /app/user
WORKDIR /app/user
## exposing port is not supported by heroku, will used $PORT env. variable
# EXPOSE 8080
########## heroku ###########

##### mhart/alpine-node #####
## use specific npm version
# ENV NPM_VERSION=3
## install dependencies only for mhart/alpine-node
## npm not exists for mhart/alpine-node:base image
RUN npm install
##### mhart/alpine-node #####

CMD [ "npm", "start" ]
