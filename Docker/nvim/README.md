## Quick reference 

Maintained by: [Seebak](https://github.com/Seebak-Tech/DevTools/tree/main/Docker/nvim)

Where to get help: [the Docker Community Forums](https://forums.docker.com/)

## Supported tags and respective Dockerfile links

- [DevTools v.01](https://github.com/Seebak-Tech/DevTools/releases/tag/v0.1)

## Quick reference (cont.)

Where to file issues: [Github Issues](https://github.com/Seebak-Tech/DevTools/issues)

Supported architectures: MacOS, Ubuntu 20.04

## What is nvim?

[Neovim](https://neovim.io/) is a Vim-based text editor engineered for extensibility and usability with Spacevim in addition.

## What's in this image?

nvim image is based on [pyenv:latest](https://hub.docker.com/r/seebaktec/pyenv) so it has already the installation of zsh, tmux, pyenv and some others configuratios are are:

- Installed packages like unzip, xclip, xauth, openssh-server, etc. 

- Python versions already installed:
        2.7.19
        3.9.2

- Enabled ssh services. 

- Installed spacevim basic plugins.

### Credentials:

      User: admin
      *password disable*

You can test this image with the next command:

      docker run -it --rm --name nvim seebaktec/nvim:latest /bin/zsh

## License

As with all Docker images, these likely also contain other software which may be under other licenses (such as Bash, Ubuntu, zsh, tmux, pyenv etc from the base distribution, along with any direct or indirect dependencies of the primary software being contained).

As for any pre-built image usage, it is the image user's responsibility to ensure that any use of this image complies with any relevant licenses for all software contained within.