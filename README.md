# A Docker image with Xilinx FPGA Tools for Mac

This installation guide suppose that you already installed docker on your machine.
If no follow the instruction in the official website : https://docs.docker.com/docker-for-mac/install/

## Dockerfile

This file contain all the necessary instructions to build the Xilinx container.
Installation files must be placed in the `installers/` directory.

## First run

To build and run your docker for the first time just do:

`make`

During the first run of the container you will have to compile Vivado or SDAccel, to do so just follow the instructions provided in the GUI installer. The installer can be run using :

`bash /installation/Xilinx_SDAccel_2018.2_0614_1954_Lin64.bin`

You should select `/local/vivado/`as installation PATH as this directory will be shared with your computer for later runs. Compiled sources will be stored on a local directory called `sdx/` of SDAccel or `vivado/` for Vivado (they need to be created before the run). Those names can be changed in the Makefile.

(To install newer versions of Vivado another Xilinx product, download their installer on their website and copy the file into your `installers/` directory. They will be available within the container on `/installation/`)

## Classic usage

When the container is already build you can run it directly using the command:

`make run`

When the container is running, you can source SDAccel environement using the command `source_xilinx`. To add other files that needs to be sourced, modify the Dockerfile and add them in the `.bashrc`of the container.

## License

If you have a node locked licence, you need to change the system informations of your license with the specific ones of your container. The Host name of the docker is xilinx_container and the Host ID can be found in the Xilinx Licence Manager within the docker, for more information go to : http://www.xilinx.com/getlicense.

The license placed in the git directory will automatically be placed in the `.Xilinx/`directory of the container where it will be find by SDAccel or Vivado.

## Using the GUI

The GUI is configured by default in the Makefile and is using Xquartz.



