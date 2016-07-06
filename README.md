# uwsgi_exporter

Run the prometheus uwsgi stats exporter as a docker container. Link the existing container to your container running uwsgi, and make an environment variable UWSGI_STATS_ADDR that resolves to your docker link name and uwsgi stats port.

docker run -d --link jolly_keller:uwsgi --env UWSGI_STATS_ADDR=uwsgi:8001 -p 8000:8001 uwsgi_exporter

curl localhost:8001/metrics
