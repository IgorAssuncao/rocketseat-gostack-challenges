FROM node:12-slim

ENV path=/home/gympoint/app

RUN useradd -m gympoint && \ 
      usermod -aG gympoint gympoint && \
      mkdir -p $path && \
      chown gympoint:gympoint $path

USER gympoint

WORKDIR $path

COPY --chown=gympoint:gympoint package.json yarn.lock ./
RUN yarn install
COPY --chown=gympoint:gympoint . .

EXPOSE 3000

CMD yarn start 
