#!/bin/bash
docker run -d -p 8888:8888 turkeyfires:postal start-notebook.sh -v $(pwd):/home/jovyan/work  
