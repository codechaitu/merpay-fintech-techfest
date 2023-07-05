### Java
Make sure to install java 11.
```
$ brew install java11
$ java -version
```

### Flink
Download [Flink 1.70.x](https://flink.apache.org/downloads/) and extract it. use a version higher than 1.70

### Starting Flink Cluster
```
$ cd path/flink
$ ./bin/start-cluster.sh
```
### Starting the SQL Gateway 
```
$ ./bin/sql-gateway.sh start -Dsql-gateway.endpoint.rest.address=localhost
$ curl http://localhost:8083/v2/info
{"productName":"Apache Flink","version":"1.17.0"}
```
### Starting the SQL Client CLI
```
$ ./bin/sql-client.sh gateway --endpoint localhost:8083/v2
```

or you can use `-i` option to execute an initialization SQL file to setup environment when starting up the SQL Client.

```
$ ./bin/sql-client.sh gateway --endpoint localhost:8083/v2 -i path/init.sql
```
