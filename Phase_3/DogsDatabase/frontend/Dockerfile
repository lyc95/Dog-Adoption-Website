# Build stage
FROM node:20 AS build

WORKDIR /app
COPY package*.json ./
RUN npm install
COPY . .
RUN npm run build

# Production stage with Nginx
FROM nginx:alpine

# Copy Vue build output into Nginx
COPY --from=build /app/dist /usr/share/nginx/html

# Optional: custom nginx config (for Vue Router history mode)
# COPY nginx.conf /etc/nginx/nginx.conf

EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
