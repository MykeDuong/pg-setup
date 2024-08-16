# PostgreSQL Setup with Replication and PGBouncer

## Purpose
This project creates a master PostgreSQL database, and a read-only replica. There are 2 PgBouncers to pool the connections, 1 for read-write operations (connecting to the master, port 6432), and 1 for read-only operations (connecting to the replica, port 6433)

## Usage

### Create the cluster:
```bash
docker compose up
```

### Access Master database:
```bash
psql "postgres://masteruser:masterpassword@localhost:6432/masterdb"
```

### Access Replica:
```bash
psql "postgres://masteruser:masterpassword@localhost:6433/masterdb"
```

### Clean the cluster:
```bash
./clean.sh
```
