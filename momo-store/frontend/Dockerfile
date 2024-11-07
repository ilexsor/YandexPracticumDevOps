FROM node:16 as builder
WORKDIR /usr/src/app
COPY . .
RUN npm install
RUN NODE_ENV=production VUE_APP_API_URL=http://backend-service:8081 npm run build

FROM nginx:latest
COPY --from=builder /usr/src/app/dist /usr/share/nginx/html
ENV VUE_APP_API_URL=http://backend-service:8081
ENV NODE_ENV=production
CMD ["nginx", "-g", "daemon off;"]
EXPOSE 80
