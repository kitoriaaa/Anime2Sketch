.PHONY: docker-build
docker-build:
	docker build -t kobayashi/anime2sketch container

.PHONY: docker-run
docker-run:
	docker run -it -d --gpus all -v `pwd`:/workspace -v ~/hdd01/datasets/:/dataset --name anime2sketch kobayashi/anime2sketch

.PHONY: docker-exec
docker-exec:
	docker exec -it anime2sketch /bin/bash

.PHONY: clean
clean:
	-docker stop anime2sketch
	docker rm anime2sketch

.PHONY: demo
demo:
	# python test.py --dataroot /dataset/ShapeNet/ShapeNetRendering/02691156/1169d987dbbce76775f4ea0b85a53249/rendering/ --load_size 512 --output images/output
	python test.py --dataroot images/input --load_size 512 --output images/output