## Quick reference 

Maintained by: [Seebak](https://github.com/Seebak-Tech/DevTools/tree/main/Docker/tmux)

Where to get help: [the Docker Community Forums](https://forums.docker.com/)

## Supported tags and respective Dockerfile links

- [DevTools v.01](https://github.com/Seebak-Tech/DevTools/releases/tag/v0.1)

## Quick reference (cont.)

Where to file issues: [Github Issues](https://github.com/Seebak-Tech/DevTools/issues)

Supported architectures: MacOS, Ubuntu 20.04

## What is tmux?

tmux is a terminal multiplexer. It lets you switch easily between several programs in one terminal, detach them and reattach them to a different terminal with a self-contained, pretty and versatile .tmux.conf configuration file.
In order to work to sessions of tmux, we installed it from : [tmux](https://github.com/gpakosz/.tmux)

## What's in this image?

tmux image is based on [zsh:latest](https://hub.docker.com/r/seebaktec/zsh) and configured with copy and paste commands.

You just need to hit <kbd>Ctrl</kbd> + <kbd>b</kbd> + <kbd>m</kbd> to activate the use of the mouse.

### Credentials:

      User: admin
      *password disable*

You can test this image with the next command:

      docker run -it --rm --name tmux seebaktec/tmux:latest /bin/zsh

## License

As with all Docker images, these likely also contain other software which may be under other licenses (such as Bash, Ubuntu, zsh, tmux etc from the base distribution, along with any direct or indirect dependencies of the primary software being contained).

As for any pre-built image usage, it is the image user's responsibility to ensure that any use of this image complies with any relevant licenses for all software contained within.