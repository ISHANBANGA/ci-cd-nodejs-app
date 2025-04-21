# Use official Node.js image
FROM node:18

# Create app directory
WORKDIR /app

# Copy package files and install dependencies
COPY package*.json ./
RUN npm install

# COpy the rest of your app
COPY . .

# Expose the port the app runs on 
EXPOSE 3000

# Run the app
CMD ["npm", "start"]