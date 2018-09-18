FROM node:8.12.0-alpine
RUN gitbook fetch latest
RUN npm install -g gitbook-cli
ENV BOOKDIR /gitbook
VOLUME $BOOKDIR
EXPOSE 4000
WORKDIR $BOOKDIR
CMD ["gitbook", "--help"]