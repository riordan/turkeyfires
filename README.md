# Analysis of NFIRS 1980-2015 for Turkey Fires project

NFIRS is a database of fires in the United States released annually by [...].

# Collaborators
* J. Nathan Mattias
* Rahul Bot
* Matthew Carrol
* David Riordan

# Getting Started
This is by no means comprehensive, but should sorta get you set up to somewhere.

## Docker-land
You're very, very brave. Seriously, you don't have to do this. Consider taking the [Path Of the Normcore](#normcore) below.

1. [Install Docker Engine](https://docs.docker.com/engine/installation/)
2. Build the local ipython/docker image
`docker build .` That should give you a LOOOOOONG name for the image (which only exists inside your computer)
3. Start running the image `docker run -d -p 8888:8888 -v $(pwd):/home/jovyan/work [THE-FIRST-4-CHARACTERS-OF-THAT-ABOVE-IMAGE] start-notebook.sh` This should have a gibberish, but at least human-readable name. You can [Access The Running Server Here](http://127.0.0.1:8888)
4. Rename the (now running) image something memorable `docker rename [JIBBERISH-ENGLISH] turkeyfires`
5. When you want to stop this image `docker stop turkeyfires`
6. When you want to resume it later `docker start turkeyfires`

When running, you can [Access the running server here](http://127.0.0.1:8888)

This should give you read/write access to this folder from within the Jupyter Notebook.

To add a new dependency, add it to the Dockerfile.


## Normcore

This assumes a fairly high level of installer competency with Python.

Python-ness:
- Assumes python 3.5
- Please use virtualenv
- `pip install requirements.txt`
- `ipython notebook`

When running, you can [Access the running server here](http://127.0.0.1:8888)

(this method of documentation has been untested)

### updates:
This assumes all dependencies are frozen with `pip freeze > requirements.txt`. If something's missing, hopefully the code will sufficiently yell at you when you try and run it. Then yell at me here to fix it.

# TODO
## Data Gardening
- [ ] Get data out of the exe files
- [ ] And into CSVs
- [ ] Normalize data across years
- [ ] Publish original format data to internet archive (with metadata)
- [ ] Publish CSV format data to internet archive (with metadata)
- [ ] Publish normalized CSVs of data to Internet Archive (with Metadata)
- [ ] Publish scripts to do data transforms from Internet Archive copies into useful formats
