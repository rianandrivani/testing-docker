FROM node:16

# Create folder dgn nama kwd dalam docker
RUN mkdir /kwd

# directory utama aplikasi dalam docker
WORKDIR /kwd

# menambahkan file dari luar ke docker
ADD ./app /kwd

RUN npm install --loglevel=warn;

USER node

CMD [ "npm", "run", "serve" ]