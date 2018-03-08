# RUN AN EXPRESS SERVER WITH NODEMON IN A DOCKER CONTAINER

This is a simple HTML Hello world running express with nodemon inside of a Docker container. In layman's terms it looks like running a computer within your computer. But if you run and work within the "container" deployment is much easier because you only need to deploy the container you have been working in. No need to build a new environment in the cloud. Also your team mates and work an environment configured in the same way. 

## Getting Started

These instructions will get you a copy of the project up and running inside of a docker container.

### Prerequisites

Install Docker on your local computer 

```
https://www.docker.com/community-edition
```

If you have a windows computer that is no Windows 10 Professional or an older Mac, use an older version for Docker (Docker Tool Box). 

```
https://docs.docker.com/toolbox/overview/
```

If you are working on a Windows 10 none Proffessional system you will also need Virtual Box from Oracle. Experience suggests removing your current virtual box and install a new one which comes with the Docker Tool box. This is because Docker can easily find it. 


Follow all the shebang setting up docker on your computer. Once everything is looking hunky dorry locate and open "Docker Quickstart Terminal".

### Installing

Fork and clone this repo to your local machine. 
In the Docker terminal cd into the root folder of this project. 

```
  cd mycomputer/where_root_code_is_located
```

In the docker terminal take a look to see what images and containers you have if any. Also take note of the IP address listed at the top of the window. This will be you access to the running container/image It's something like "http://192.168.99.100:3000/" The 3000 comes from the express server. 

```
docker images
```

```
docker ps -a
```

Next build the set up a container and image to work in. When it's done go to the url listed above. 

```
docker-compose up --build
```

You can leave out the "--build" but including it will help to reduce errors for the system to fix automatically. 
When you want to shut down the server press ctrl+c - Also... When you want to shut down container use. 

```
docker-compose down
```

And use... 

```
docker-compose up
```

To start the server again. 

If you need to you can make a clean start with this code to remove all containers

```
docker rm $(docker ps -a -q)
```

This code removes all images. 

```
docker rmi $(docker images -q)
```





## Running the tests

Comming soon...

### Break down into end to end tests

Comming soon...

```
Give an example
```

## Deployment

Comming soon...

## Built With

Comming soon...

## Contributing

Please read [CONTRIBUTING.md](https://gist.github.com/PurpleBooth/b24679402957c63ec426) for details on our code of conduct, and the process for submitting pull requests to us.

## Versioning

We use [SemVer](http://semver.org/) for versioning. For the versions available, see the [tags on this repository](https://github.com/your/project/tags). 

## Authors

* **Jason Allshorn** - *Initial work* - [Supertopoz](https://github.com/supertopoz)


## License

This project is licensed under the MIT License - see the [LICENSE.md](LICENSE.md) file for details

## Acknowledgments

* Hat tip to anyone who's code was used
* Inspiration
* etc