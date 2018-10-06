.PHONY: build run

all : build run

build:
	docker build -t xilinx-tools .

run: 
	xhost + 127.0.0.1
	open -a xQuartz
	docker run -it \
		-h xilinx_container \
		-e DISPLAY=docker.for.mac.localhost:0 \
		-v $(CURDIR)/sdx:/local/xilinx/ \
		xilinx-tools
