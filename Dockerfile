FROM node:18-alpine

ARG REACT_APP_API_URL
ENV REACT_APP_API_URL=$REACT_APP_API_URL

WORKDIR /app

EXPOSE 5173

COPY ["package.json", "package-lock.json*", "./"]

RUN npm run build

COPY . .

CMD ["npm", "start"]