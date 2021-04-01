## Quick reference 

Maintained by: [Seebak](https://github.com/Seebak-Tech/DevTools/tree/main/Docker/pyenv)

Where to get help: [the Docker Community Forums](https://forums.docker.com/)

## Supported tags and respective Dockerfile links

- [DevTools v.01](https://github.com/Seebak-Tech/DevTools/releases/tag/v0.1)

## Quick reference (cont.)

Where to file issues: [Github Issues](https://github.com/Seebak-Tech/DevTools/issues)

Supported architectures: MacOS, Ubuntu 20.04

## What is pyenv-installer?

pyenv lets you easily switch between multiple versions of Python and this tool installs pyenv and friends.

In order to manage python versions, we installed it from : [pyenv-installer](https://github.com/pyenv/pyenv-installer)

## What's in this image?

pyenv image is based on [tmux:latest](https://hub.docker.com/r/seebaktec/tmux) so it has already the installation of zsh and tmux.

### Credentials:

      User: admin
      *password disable*

You can test this image with the next command:

      docker run -it --rm --name pyenv seebaktec/pyenv:latest /bin/zsh

## License

As with all Docker images, these likely also contain other software which may be under other licenses (such as Bash, Ubuntu, zsh, tmux etc from the base distribution, along with any direct or indirect dependencies of the primary software being contained).

As for any pre-built image usage, it is the image user's responsibility to ensure that any use of this image complies with any relevant licenses for all software contained within.