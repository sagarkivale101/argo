FROM mongo:4.2.0

#COPY init.sh /docker-entrypoint-initdb.d/

COPY mongo.keyfile .

RUN chmod 400 mongo.keyfile

RUN chown 999:999 mongo.keyfile

#rs.initiate({ _id: "rs0", members: [ { _id: 0, host: "mongo1:27017", priority: 3 }, { _id: 1, host: "mongo2:27017", priority: 1 }, { _id: 2, host: "mongo3:27017", priority: 2 } ] });


#rs.initiate({ _id: "rs0", members: [ { _id: 0, host: "mongo-gessa-0.mongo-gessa.mongo-gessa.svc.cluster.local:27017", priority: 3 }, { _id: 1, host: "mongo-gessa-1.mongo-gessa.mongo-gessa.svc.cluster.local:27017", priority: 1 }, { _id: 2, host: "mongo-gessa-2.mongo-gessa.mongo-gessa.svc.cluster.local:27017", priority: 2 } ] });