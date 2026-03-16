#build stage
FROM node:20 AS build

WORKDIR /app

COPY dockerfile-multistage-lab/package.json dockerfile-multistage-lab/package-lock.json ./
RUN npm install

COPY dockerfile-multistage-lab/. .
RUN npm run build

#here is production stage
FROM nginx:alpine

COPY --from=build /app/dist /usr/share/nginx/html

EXPOSE 80