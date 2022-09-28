FROM ubuntu:18.04

WORKDIR /app/

RUN apt-get update && apt-get install -y \
	# command-line tools
	imagemagick
COPY ./imagemagick_policy.xml /etc/ImageMagick-6/policy.xml

# Copy the files from this directory to the working directory in the container
COPY . /app

# Define the command that runs the container's main procedure
ENTRYPOINT ["./convert.sh"]
