# Jotihunt

# Settings
In the `env` file you should set your preference. For all possible options, see https://github.com/roothaan/jotihunt-site#environment-variables
For example, the `env` should like like this
```
DATABASE_URL=postgres://jotihunt-site:password@database-server:5432/jotihunt-site
#PROXY_SERVER_PORT=8443
#PROXY_BASE_URL=jotihunt
SITE_SHOW_ERRORS=1
```

# How to run

Script example:
```sh
docker run \
  --restart=always \
  -d --name jotihunt-site \
  -h jotihunt-site \
  -p 8080:80 \
  -p 8081:443 \
  jasperroel/jotihunt-site
```
