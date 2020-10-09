FROM envoyproxy/envoy-alpine:v1.17-latest

RUN apk update && apk add curl bash nano
CMD /usr/local/bin/envoy -c /etc/envoy.yaml
