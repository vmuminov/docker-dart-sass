# Dart-Sass, dockerized

Dockerized version of [sass/dart-sass](https://github.com/sass/dart-sass), Contains the latest release of dart-sass. The `sass` executable is the entrypoint, so use it as if you'd use the executable itself; see `docker run hidespb/dart-sass:alpine --help` for help

## Supported arches

- linux/arm
- linux/arm64
- linux/amd64

## Building an image

[build.sh](build.sh) dockerizes latest release and pushes a new manifest using `docker buildx`. Feel free to customize it to your needs


## License

MIT
