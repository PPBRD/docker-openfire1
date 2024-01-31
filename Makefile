all: build

build:
	@docker build --tag=sdwan/openfire .

release: build
	@docker build --tag=sdwan/openfire:$(shell cat VERSION) .
