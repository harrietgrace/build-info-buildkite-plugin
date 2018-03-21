FROM alpine

ENV PACKAGES bash jq git

RUN apk update && \
    apk upgrade && \
    apk add $PACKAGES && \
    rm -rf /var/cache/apk/*

WORKDIR /workspace

CMD [ "./lib/generate-build-info.sh" ]