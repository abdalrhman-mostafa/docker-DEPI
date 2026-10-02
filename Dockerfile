#builder stage

FROM node:18-alpine As builder

WORKDIR /app

COPY package.json package-lock.json ./

RUN npm install

COPY . .

RUN npm run build


#running stage

FROM nginx

COPY --from=builder /app/build /usr/share/nginx/html
