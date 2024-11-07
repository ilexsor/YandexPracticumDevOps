FROM node:14-alpine as builder
WORKDIR /usr/src/app
COPY . .
RUN npm install
RUN NODE_ENV=production VUE_APP_API_URL=https://ilexsor.ru/api npm run build

FROM nginx:latest
COPY --from=builder /usr/src/app/dist /usr/share/nginx/html
COPY ./default.conf /etc/nginx/conf.d/default.conf
COPY ./privkey.key /etc/nginx/
COPY ./fullchain.crt /etc/nginx/
EXPOSE 443
CMD ["nginx", "-g", "daemon off;"]

