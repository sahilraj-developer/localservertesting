# Dockerfile
FROM node:14

# Create app directory
WORKDIR /usr/src/app

# Install app dependencies
COPY package*.json ./
RUN npm install

# Copy the app code
COPY . .

# Expose the port
EXPOSE 3000

# Run the app
CMD ["node", "index.js"]
