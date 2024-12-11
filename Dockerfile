#Base image
FROM node 
#Working dir
WORKDIR /app
#copy
COPY package.json .
#npm install
RUN npm install
#Copy all files
COPY . .
#PORT
EXPOSE 3000
#project RUN
CMD [ "npm","start" ]