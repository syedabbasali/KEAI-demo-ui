# Step 1: Use an official Node.js image as the base image
FROM node:18-alpine

# Step 2: Set the working directory inside the container
WORKDIR /app

# Step 3: Copy package.json and package-lock.json to the working directory
COPY package*.json ./

# Step 4: Install all dependencies
RUN npm install

# Step 5: Copy the rest of the application code to the working directory
COPY . .

# Step 6: Build the TypeScript code
RUN npm run build

# Step 7: Expose the application port (if your app serves on a specific port)
EXPOSE 3000  
#Adjust if your app uses a different port

# Step 8: Start the application
CMD ["npm", "start"]
