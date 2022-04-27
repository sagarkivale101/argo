mongo --eval "db.getSiblingDB('admin').createUser({user: "root",pwd: "password", roles: [ { role: "userAdminAnyDatabase", db: "admin" } ]})"
mongo --eval "db.getSiblingDB('admin').createUser({user:'mongodb_exporter',pwd:'password',roles:[{ role: 'clusterMonitor', db: 'admin' }, { role: 'read', db: 'local' } ] })"
