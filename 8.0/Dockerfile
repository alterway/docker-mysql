FROM mysql:8.0
ENV LOCALTIME Europe/Paris
COPY docker-entrypoint.sh /_entrypoint.sh
ENTRYPOINT ["/_entrypoint.sh"]
CMD ["mysqld"]