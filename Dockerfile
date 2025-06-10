#step 1
FROM node:18-alpine

#Step 2 Set the wroking directory
WORKDIR /app

#step 3 copy the dependencies
COPY package*.json ./

#step 4 install the copied depnendecies
RUN npm install

#step 5 copy all files
COPY . .

#step 6 Expose the port for the app
EXPOSE 5173

#step 7 start the app
CMD ["npm", "run", "dev", "--", "--host", "0.0.0.0"]