ARG NODE_VERSION=22-alpine

FROM node:${NODE_VERSION} AS builder

WORKDIR /build

COPY . .

RUN corepack enable && pnpm i && pnpm build

FROM nginx:alpine

RUN rm -rf /usr/share/nginx/html/*

COPY --from=builder /build/build /usr/share/nginx/html
COPY nginx.conf /etc/nginx/conf.d/default.conf

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
