FROM alpine:3.2

RUN apk -U add ca-certificates && \
	apk update && \
	apk add docker && \
	rc-update add docker boot

COPY ./assets/out /opt/resource/
RUN chmod +x /opt/resource/out
