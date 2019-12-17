# Start from the latest golang base image
FROM golang:latest

# We create an /app directory within our
# image that will hold our application source
# files
RUN mkdir /app

# We copy everything in the root directory
# into our /app directory
ADD . /app

# We specify that we now wish to execute
# any further commands inside our /app
# directory
WORKDIR /app

# we run go build to compile the binary
# executable of our Go program
RUN go build -o server .

# Expose port 5050 to the outside world
EXPOSE 5050

# Command to run the executable
CMD ["/app/server"]
