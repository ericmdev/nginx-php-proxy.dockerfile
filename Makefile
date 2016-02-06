# Build the image.
.PHONY: build
build:
	docker build -t nginx-php-proxy-image -f Dockerfile .

# Stop and remove all containers.
.PHONY: clean
clean:
	docker stop nginx-php-proxy-container
	docker rm nginx-php-proxy-container

# Remove the image.
.PHONY: clean-image
clean-image:
	docker rm nginx-php-proxy-image

# List all containers.
.PHONY: ls
ls:
	docker ps -a

# List all images.
.PHONY: ls-images
ls-images:
	docker images

# List all images.
.PHONY: logs
logs:
	docker logs nginx-php-proxy-container

# Run the container.
.PHONY: run
run:
	docker run -d --name nginx-php-proxy-container -p 9090:9000 nginx-php-proxy-image
	
# Execute the interactive bash of the container.
.PHONY: exec
exec:
	docker exec -it nginx-php-proxy-container bash