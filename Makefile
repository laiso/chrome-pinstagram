all: clean build

build:
	zip dist.zip -r . 

clean: 
	dist.zip
