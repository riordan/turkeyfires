# Analysis of NFIRS 1980-2015 for Turkey Fires project

NFIRS is a database of fires in the United States released annually by [...].

# Collaborators
* J. Nathan Mattias
* Rahul Bot
* Matthew Carrol
* David Riordan

# The Work
## Log so far
### 4/29/2016
Downloaded zips of the data from Rahul's dropbox into this folder (these files are not part of the git repository, but will be made available on Internet Archive as we recieved them).

Trying to do all the analysis work within a Jupyter iPython notebook and within Docker. So... that might be a mistake. But lets try it.

`docker run -d -p 8888:8888 jupyter/datascience-notebook start-notebook.sh --NotebookApp.base_url=.`

Lots of data archaeology still to be done

Command didn't work. Looks like it's mounting the baseurl within the docker image still, and not to the filesystem.

Mount Docker Jupyter/Datascience Notebook for THIS FOLDER/PROJECT
`docker run -d -p 8888:8888 -v $(pwd):/home/jovyan/work jupyter/datascience-notebook start-notebook.sh`


# TODO
## Data Gardening
- [ ] Get data out of the exe files 
- [ ] And into CSVs
- [ ] Normalize data across years
- [ ] Publish original format data to internet archive (with metadata)
- [ ] Publish CSV format data to internet archive (with metadata)
- [ ] Publish normalized CSVs of data to Internet Archive (with Metadata)

