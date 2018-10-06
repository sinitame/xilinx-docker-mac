FROM ubuntu:16.04

WORKDIR /root/
COPY installers/* /installation/
COPY Xilinx.lic /root/.Xilinx/

RUN echo "alias source_xilinx=\"/local/SDx/SDx/2018.2/settings64.sh\"" >> /root/.bashrc
RUN . /root/.bashrc


RUN apt-get update && apt-get install -y \
		ocl-icd-libopencl1 \
		opencl-headers  \
		ocl-icd-opencl-dev \ 
		linux-libc-dev\
		g++\
		gcc\
		gdb\
		make\
		libopencv-dev\
		libjpeg-dev\
		libpng-dev\
		libtiff5-dev\
		python\
		git\
		dmidecode\
		pciutils\
		strace\
		perl\
		libboost-dev\
		libboost-filesystem-dev\
		gnuplot\
		cmake\
		lm-sensors\
		lsb\
		unzip\
		python3-sphinx-rtd-theme \
		sphinx-common\
		python3-sphinx\
		libuuid1\
		uuid-dev\
		mokutil\
		wget\
		openssl
