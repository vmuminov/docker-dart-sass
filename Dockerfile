FROM alpine
ARG VERSION
ARG TARGETARCH
RUN <<EOF
case $TARGETARCH in
    arm64*) ARCH="arm64-musl";;
    arm*) ARCH="arm-musl";;
    amd64) ARCH="x64-musl";;
    *) echo "unknown targetarch: $TARGETARCH" && exit 1;;
esac
wget -O dart-sass.tar.gz "https://github.com/sass/dart-sass/releases/download/${VERSION}/dart-sass-${VERSION}-linux-${ARCH}.tar.gz"
tar -zxf dart-sass.tar.gz
rm dart-sass.tar.gz
EOF
ENTRYPOINT [ "/dart-sass/sass" ]
