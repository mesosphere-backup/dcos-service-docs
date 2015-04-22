# dcos-service-docs

This repo includes some template docs to be added to a datacenter service's GitHub repository and published via [GitHub pages](https://pages.github.com/). Docs use [GitHub Flavored Markdown](https://help.github.com/articles/github-flavored-markdown/).

For examples of this template in use, please see:
1. the [Marathon project](https://mesosphere.github.io/marathon/docs/)
1. the [Mesos DNS project](https://mesosphere.github.io/mesos-dns/docs/)

## Usage

1. Clone this project:

        git clone git@github.com:mesosphere/dcos-service-docs.git

2. Customize the default values with those specific to your project. The script will prompt you for these:

        cd dcos-service-docs && bin/customize.sh

3. Copy the newly created folder into your project repo:

        cp -R docs-myservicename ../myservicerepo/docs

4. Follow the instructions in the docs README to test the new docs site and to deploy it to GitHub pages.

5. Be sure to add a link to the docs site (e.g. https://mesosphere.github.io/marathon/docs/) to your project's GitHub description and README for easier discoverability.


## README

For consistency, nearly all user facing content should be contained in the `docs/` folder and published to GitHub pages. It is, however, acceptable to keep developer focussed documentation in the repository's root `README.md`. The following structure is recommended, again,  see the [Marathon README](https://github.com/mesosphere/marathon) for an example:
- Introduction
- Features
- Developer Set Up
- Documentation
- 3rd Party Clients
- Companies Using Service
- Help
- Authors