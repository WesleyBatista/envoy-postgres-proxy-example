FROM envoyproxy/envoy-alpine:v1.16-latest

RUN apk update && apk add curl bash nano
CMD /usr/local/bin/envoy -c /etc/envoy.yaml
