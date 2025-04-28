#this is the intrucsion for docker to read how to run the app
FROM node:20.10

# goes to the app directory 
WORKDIR /app

# Copy package.json and package 
COPY package*.json ./

#install dependencies 
RUN npm install

#Copy the rest of our app intro the container 
COPY . . 

# Set port enviroment Variable 
ENV PORT = 9000

#Expose the port so our computer can access 
EXPOSE 9000

#Run the app 
CMD ["npm","start"]

