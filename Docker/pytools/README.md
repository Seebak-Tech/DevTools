## Quick reference 

Maintained by: [Seebak](https://github.com/Seebak-Tech/DevTools/tree/main/Docker/pytools)

Where to get help: [the Docker Community Forums](https://forums.docker.com/)

## Supported tags and respective Dockerfile links

- [DevTools v.01](https://github.com/Seebak-Tech/DevTools/releases/tag/v0.1)

## Quick reference (cont.)

Where to file issues: [Github Issues](https://github.com/Seebak-Tech/DevTools/issues)

Supported architectures: MacOS, Ubuntu 20.04

## What is pytools?

 Pytools is a work environment with a serie of tools installed to develop projects in python.

## What's in this image?

 The pytools image has the following tools installed and configured:
  - Oh my zsh is custumized by:
  [Powerlevel10k](https://github.com/romkatv/powerlevel10k)
  - TMUX is custumized by: [Oh my tmux ](https://github.com/gpakosz/.tmux)
  - pyenv
  - poetry
  - neovim with spacevim

With the following python versions installed:
  - 2.7.19
  - 3.9.2

And enabled ssh services whit the next ports EXPOSE:

    - port 22
    - port 8888

### Credentials:

      User: admin
      Default password: admin1

You can test this image with the next command:

        docker run -itd --name pytools -p 22:22 -p 8888:8888 pytools:latest /bin/zsh

For linux you need to add the next to the previous command:

        -v /tmp/.X11-unix:/tmp/.X11-unix 

We use ssh to connect to a tmux session (named "default") inside the container: 
   
        ssh admin@localhost -p 22 -t tmux a -t default 

## License

As with all Docker images, these likely also contain other software which may be under other licenses (such as Bash, Ubuntu, zsh, tmux, pyenv, poetry, nvim etc from the base distribution, along with any direct or indirect dependencies of the primary software being contained).

As for any pre-built image usage, it is the image user's responsibility to ensure that any use of this image complies with any relevant licenses for all software contained within.
