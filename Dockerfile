FROM keymetrics/pm2:latest-alpine

# Install app dependencies
ENV NPM_CONFIG_LOGLEVEL warn

# Expose the listening port of your app
EXPOSE 8000

# Show current folder structure in logs
RUN ls -al -R

# CMD [ "npm install --production && pm2-runtime", "start", "ecosystem.config.js" ]
CMD cd /usr/app/ \
    && npm install \
    && pm2-runtime start ecosystem.config.js