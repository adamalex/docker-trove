### Instantly automate Rackspace Cloud Databases with Docker

[Rackspace Cloud Databases](http://www.rackspace.com/cloud/databases/) utilize OpenStack's DBaaS component, [Trove](https://wiki.openstack.org/wiki/Trove), and can be automated using the [Trove API](http://docs.openstack.org/developer/trove/).

This Docker image encapsulates [python-troveclient](https://pypi.python.org/pypi/python-troveclient) for easy CLI access.

### Example files

* `Dockerfile` defines a minimal Docker image that exposes [python-troveclient](https://pypi.python.org/pypi/python-troveclient) as the image [ENTRYPOINT](http://docs.docker.com/reference/builder/#entrypoint) for simple access to all its functionality. This image brings the API client utility to any machine with Docker, even one without Python or with an incompatible Python installation.

* `trove.sh` shows how to configure and run this image. Command line arguments passed to this script flow through Docker into [python-troveclient](https://pypi.python.org/pypi/python-troveclient) itself, so running `trove.sh help` will show you all available API operations.

### Configuration

For details on the variables that are used to configure the Trove client, see http://docs.rackspace.com/cdb/api/v1.0/cdb-getting-started/content/Install_Trove_Client.html

### Usage

```bash
# Pull the preconfigured image to speed things up the first time you run
$ docker pull adamalex/trove:1.0.5

# Clone this repository
$ git clone https://github.com/adamalex/docker-trove.git

# Customize the example script -- documentation for config variables available at
# http://docs.rackspace.com/cdb/api/v1.0/cdb-getting-started/content/Install_Trove_Client.html 
$ cd docker-trove && vi trove.sh

# Get syntax help
$ ./trove.sh help

# Back up a cloud database
$ ./trove.sh backup-create <backup-name> <cloud-db-uuid>
```

### Getting In Touch

[Tweet at me](https://twitter.com/adamalex) or [File an issue](https://github.com/adamalex/docker-trove/issues)
if you have questions or comments