FROM node:20-alpine

WORKDIR /app

# Install dependencies based on the preferred package manager
COPY package.json yarn.lock* package-lock.json* pnpm-lock.yaml* ./

RUN npm install

COPY . .

WORKDIR /app

# Next.js collects completely anonymous telemetry data about general usage.
# Learn more here: https://nextjs.org/telemetry
# Uncomment the following line in case you want to disable telemetry during the build.
ENV NEXT_TELEMETRY_DISABLED 1

RUN npm run build
RUN npm install -g serve

COPY dist ./dist

ENV NODE_ENV production

CMD ["serve", "-s", "dist"]
