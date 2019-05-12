FROM keymetrics/pm2:latest-alpine

WORKDIR /usr/app

# Install app dependencies
ENV NPM_CONFIG_LOGLEVEL warn

# Expose the listening port of your app
EXPOSE 8000

# Show current folder structure in logs
RUN ls -al -R

CMD [ "npm install --production && pm2-runtime", "start", "ecosystem.config.js" ]