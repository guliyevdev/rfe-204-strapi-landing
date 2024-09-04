# Base image
FROM node:20.17-alpine3.19

# Set working directory
WORKDIR /app

# Install dependencies
COPY package.json yarn.lock ./
RUN yarn install

# Copy project files
COPY . .

# Build Strapi project
RUN yarn build

# Expose the port Strapi will run on
EXPOSE 1337

# Start Strapi
CMD ["yarn", "start"]