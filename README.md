# licensee-docker

This provides a simple Docker image for the Ruby Gem [licensee](https://github.com/licensee/licensee) for detecting licenses, to make it simpler to use in environments where Docker is available but Ruby is not.

A built image, which may or may not be particularly up-to-date, is available on `ghcr.io`.

## Usage

The Docker image simply uses as its entry point the `licensee` command line interface. In particular, you can use Docker volumes to run the tool on a given project or license file. For example, to detect the license of a file called `LICENSE.txt` in the current working directory, you could do the following:

```sh
$ docker run -v ${PWD}/LICENSE.txt:/LICENSE.txt ghcr.io/fuglede/licensee-docker/licensee:latest detect LICENSE.txt
License:        BSD-3-Clause
Matched files:  LICENSE.txt
```
