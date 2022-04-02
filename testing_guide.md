# Testing Guide
Often, it is advantageous to run tests within a given docker container from nvim. For this nvim config, here is how you do this:

1. `docker run -dit --name testing_container CONTAINER bash`

To test behavior:
`docker exec testing_container python -c "print('hello world')"`
`docker attach testing_container`
