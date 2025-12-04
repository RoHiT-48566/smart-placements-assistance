# ---------- Stage 1: Build React App ----------
FROM node:20-alpine AS build

# Set working directory
WORKDIR /app

# Copy package.json and package-lock.json
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the app
COPY . .

# Build production-ready React files
RUN npm run build


# ---------- Stage 2: Serve with Nginx ----------
FROM nginx:stable-alpine

# Remove default nginx page
RUN rm -rf /usr/share/nginx/html/*

# Copy React build from previous stage
COPY --from=build /app/build /usr/share/nginx/html

# Copy custom Nginx configuration
COPY nginx.conf /etc/nginx/conf.d/default.conf

# Expose web port
EXPOSE 80

# Start Nginx
CMD ["nginx", "-g", "daemon off;"]
