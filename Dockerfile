FROM python:onbuild

CMD uwsgi_exporter.py --stats_addr $UWSGI_STATS_ADDR --bind_address 0.0.0.0 --bind_port 8000
