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

Enabled ssh services with the following ports:

    - port 22
    - port 8888

And supports run X11-apps like xclock, xeyes etc. 
<p align="center">
  <img width="150" height="150" src="https://user-images.githubusercontent.com/33498584/113649227-ab943180-9653-11eb-960b-d0b2708735ea.jpeg">
</p>

### Files for docker-compose:

To interact with the pytools image it is recommended to use the docker compose file and configure some aliases:

- For Linux use the file: [pytools_linux.yml](https://github.com/Seebak-Tech/DevTools/blob/0ab46d6e7c3b87c8722b83df557514c40d3e9238/Docker/pytools/pytools_linux.yml)
      
    
- For MacOs use the file: [pytools_mac.yml](https://github.com/Seebak-Tech/DevTools/blob/0ab46d6e7c3b87c8722b83df557514c40d3e9238/Docker/pytools/pytools_mac.yml)

Only for work with x11-apps in MacOS add: 
 
      echo 'export HOST_DOCKER="host.docker.internal"' >> ~/.zshrc 

### Test

For run your workspace you have to define environment variable WORKSPACE to point to the path where your proyect repository is located and follow the next steps:

### Run with Docker-compose

You can build and run the container using:

    docker-compose -f $WORKSPACE/pytools_***.yml up -d

### Some others useful commands for docker-compose:

You can manipulate your container using the docker-compose command as follows:

    Usage:
      docker-compose [-f <arg>...] [COMMAND]  [options]

    Options:
      -f, --file FILE             Specify an alternate compose file
                                  (default: docker-compose.yml)
    Commands:
      down               Stop and remove containers, networks, images, and volumes
      pause              Pause services
      start              Start services
      stop               Stop services
      unpause            Unpause services
      up                 Create and start containers

Example: 

 In the next example we use the command "up" + "-d" to indicate we want to dettach the container in our current session:

    docker-compose -f $WORKSPACE/pytools_***.yml up -d

You can also see this information and more by running docker-compose --help from the command line.


### Alias for container pytools:

 If you prefer, you could add the following alias to the .zshrc file:

    alias pytools-ssh="ssh admin@localhost -p 22 -t tmux a"
    
    alias pytools-up="docker-compose -f $WORKSPACE/pytools_***.yml up -d"

    alias pytools-down="docker-compose -f $WORKSPACE/pytools_***.yml down"
    
    alias pytools-start="docker-compose -f $WORKSPACE/pytools_***.yml start"
    
    alias pytools-stop="docker-compose -f $WORKSPACE/pytools_***.yml stop"

    alias pytools-pause="docker-compose -f $WORKSPACE/pytools_***.yml pause"
  
    alias pytools-unpause="docker-compose -f $WORKSPACE/pytools_***.yml unpause"
 

### Execute container pytools:
  
We use ssh to connect to a tmux session (named "default") inside the container: 
   
    ssh admin@localhost -p 22 -t tmux a -t default 

### Credentials:

      User: admin
      Default password: admin1

## License

As with all Docker images, these likely also contain other software which may be under other licenses (such as Bash, Ubuntu, zsh, tmux, pyenv, poetry, nvim etc from the base distribution, along with any direct or indirect dependencies of the primary software being contained).

As for any pre-built image usage, it is the image user's responsibility to ensure that any use of this image complies with any relevant licenses for all software contained within.
