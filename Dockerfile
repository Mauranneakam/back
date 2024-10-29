# Use the Node.js image
FROM node:14

WORKDIR /usr/src/app

COPY package*.json ./

RUN npm install

# Copy the rest of the files
COPY . .

# Expose the port
EXPOSE 3000

# Start the application
CMD ["node", "app.js"]