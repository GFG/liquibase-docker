Liquibase Docker
==================

Docker image with Liquibase installed.

## Usage

Liquibase is avalible calling the `liquibase` executable file from container. 


````
docker run -it -v /path/to/changelogs:/liquibase gfgit/liquibase liquibase liquibase <command>
````

## More info

You can get more information of Liquibase usage on proper [documentation](www.liquibase.org/documentation/index.html).