ARG KUBECTL_TAG=v1.30.0
FROM mcr.microsoft.com/oss/kubernetes/kubectl:${KUBECTL_TAG} AS kubectl

FROM alpine:3.19
RUN apk add --no-cache ca-certificates
COPY --from=kubectl /bin/kubectl /usr/local/bin/kubectl
