FROM node:18-alpine

WORKDIR /app

# Install dependencies based on the preferred package manager
COPY package.json ./

RUN npm install

COPY . .

ENV NEXT_TELEMETRY_DISABLED 1

RUN npm run build
RUN npm install -g serve

#COPY dist ./dist

ENV NODE_ENV production

CMD ["serve", "-s", "dist"]

