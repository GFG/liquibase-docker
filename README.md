Liquibase Docker
==================

Docker image with Liquibase installed.

## Usage

Liquibase is avalible calling the `liquibase` executable from container.

````
docker run -it -v /path/to/changelogs:/liquibase gfgit/liquibase <command>
````

Liquibase is the default entrypoint of image.

## More info

You can get more information of Liquibase usage on own [documentation](www.liquibase.org/documentation/index.html).
