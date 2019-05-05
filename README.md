# electron-pdf-docker
Headlessly print HTML to PDF by running the [electron-pdf](https://github.com/fraserxu/electron-pdf) CLI inside a Docker container.

## Example Usage
```
./electron-pdf-docker.sh https://google.com google.pdf
```

## Notes
* The first execution will build the Docker image.
* Destination paths not in/below the current directory will not work because Docker volumes don't do that.
* Arguments are passed into the container as-is, so refer to [electron-pdf](https://github.com/fraserxu/electron-pdf) to see what can be done. Though it's likely not all functionality will work.
