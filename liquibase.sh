#!/usr/bin/env sh

if [ ! -n "${LIQUIBASE_HOME+x}" ]; then
  ## resolve links - $0 may be a symlink
  PRG="$0"
  while [ -h "$PRG" ] ; do
    ls=`ls -ld "$PRG"`
    link=`expr "$ls" : '.*-> \(.*\)$'`
    if expr "$link" : '/.*' > /dev/null; then
    PRG="$link"
    else
    PRG=`dirname "$PRG"`"/$link"
    fi
  done

  LIQUIBASE_HOME=`dirname "$PRG"`

  # make it fully qualified
  LIQUIBASE_HOME=`cd "$LIQUIBASE_HOME" && pwd`
fi

# build classpath from all jars in lib
CP_SEPARATOR=":"
CP=.
for i in "$LIQUIBASE_HOME"/liquibase*.jar; do
  CP="$CP""$CP_SEPARATOR""$i"
done
for i in "$LIQUIBASE_HOME"/lib/*.jar; do
  CP="$CP""$CP_SEPARATOR""$i"
done

# add any JVM options here
JAVA_OPTS="${JAVA_OPTS-}"

java -cp "$CP" $JAVA_OPTS liquibase.integration.commandline.Main ${1+"$@"}
