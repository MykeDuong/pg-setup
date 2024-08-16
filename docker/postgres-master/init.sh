pg_basebackup -h postgres-master -p 5432 -U replicator -D /tmp/data/ -Fp -Xs -R
