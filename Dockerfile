FROM node:12.2.0-alpine

COPY my-app /app

WORKDIR /app

ENV PATH /app/node_modules/.bin:$PATH

RUN npm install --silent
RUN npm install react-scripts@3.0.1 -g --silent

# start app
CMD ["npm", "start"]