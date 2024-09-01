FROM node:12

WORKDIR /usr/src/app/

COPY . .

# create the appuser
RUN useradd -m appuser

# If we want to give the appuser permission to write inside the container,
#  the permission change must be done when we are still executing as root,
# that is, before the directive USER is used to change the user:

# or copy all as guest user
# https://stackoverflow.com/questions/44766665/how-do-i-docker-copy-as-non-root
# COPY --chown=appuser:appuser . .

# run as root
RUN npm install

# change the owner of current dir to appuser
RUN chown appuser .

# now we can change the user
USER appuser

EXPOSE 3000

CMD npm run start
