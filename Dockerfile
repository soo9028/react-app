FROM node:15-alpine as builder
WORKDIR /app
COPY package.json .
COPY package-lock.json .
RUN npm install --silent
COPY . .
RUN npm run build
RUN npm install git


# FROM nginx
# COPY --from=builder /app/build /usr/share/nginx/html
# EXPOSE 3001

