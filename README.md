Structure and Interpretation of Computer Programs, in Notebooks

========

Not finish yet, problem still working on tagged as yellow



====


## Read SICP in Jupyter Notebooks with MIT Scheme

> "If SICP were written in 2020, it would be in a Jupyter Notebook, hosted in the cloud" - me yesterday

This is a new Jupyter Notebook format of the 2nd Edition of "Structure and Interpretation of Computer Programs" by Harold Abelson and Gerald Jay Sussman with Julie Sussman. Getting an old version of Scheme with Emacs running on Windows is too hard, especially for beginners to programming. An HTML5 version of the book is [here](https://sarabander.github.io/sicp/). 

Thanks to containers, you now have two easier options:
- Option 1: Run SICP straight from the browser, [here](https://mybinder.org/v2/gh/callum-herries/sicp-in-notebooks/master?filepath=0.0_Structure_and_Interpretation_of_Computer_Programs.ipynb)
- Option 2: Build and run SICP from a docker container on your computer

Option 1: Run straight from the browser
------------------------------------

Follow this [link](https://mybinder.org/v2/gh/callum-herries/sicp-in-notebooks/master?filepath=0.0_Structure_and_Interpretation_of_Computer_Programs.ipynb) to create your own binder version of SICP from this repository.

The link will create a docker container for you with a ready-to-use MIT Scheme Jupyter kernel. Any changes you make to the notebooks will persist when you close the browser, as long as you use the same URL.

Option 2: Build and run a docker container
----------------------------------------

Clone this repo and build a docker container with SICP, and a MIT Scheme Jupyter kernel.

On Linux/Mac:

```
# before run docker in Macos, get some strange error use below
export DOCKER_BUILDKIT=0
export COMPOSE_DOCKER_CLI_BUILD=0

docker build -t sicp .
docker run -d -p 8888:8888 -e JUPYTER_TOKEN='sicp' -v ${PWD}:/home/jovyan sicp
```

License
-------

The content of the notebooks and diagrams in fig directory are licensed under Creative Commons Attribution-ShareAlike 4.0 International License (cc by-sa).
