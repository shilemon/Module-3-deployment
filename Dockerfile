FROM node:18
#Create the work directory
WORKDIR /app

#Copy the package.json files
COPY package*.json ./
RUN npm install 

#copy the rest of the application
COPY . .

EXPOSE 5000
#start the application
CMD ["npm", "start"]
