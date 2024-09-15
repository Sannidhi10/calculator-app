FROM nginx:alpine
RUN apk update && apk add vim nano
WORKDIR /app
COPY . /app/
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]