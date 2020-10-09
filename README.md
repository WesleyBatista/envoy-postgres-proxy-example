# envoy-postgres-proxy-example

Repo created to try out the new network filter from [envoyproxy](https://github.com/envoyproxy/envoy).

1. Bring it up with `docker-compose up`
2. Connect to postgres using `psql`:
    ```
    $ psql -U postgres -h localhost
    psql (12.4 (Ubuntu 12.4-0ubuntu0.20.04.1), server 13.0)
    WARNING: psql major version 12, server major version 13.
            Some psql features might not work.
    Type "help" for help.

    postgres=# 
    ```
3. Navigate to [http://localhost:9901/stats](http://localhost:9901/stats) to see the counts.
   > currently only `postgres.postgres.sessions` and `postgres.postgres.sessions_encrypted` get increased :/

Ref.: 
- [Envoy Docs - Postgres proxy](https://www.envoyproxy.io/docs/envoy/latest/configuration/listeners/network_filters/postgres_proxy_filter)
