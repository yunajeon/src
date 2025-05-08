FROM public.ecr.aws/docker/library/node:20.15.1-slim
WORKDIR /app
COPY package*.json .
RUN npm install
COPY . .
CMD ["npm","run","dev","--","--host=0.0.0.0"]
