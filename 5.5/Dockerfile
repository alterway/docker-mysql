FROM mysql:5.5
ENV LOCALTIME Europe/Paris
COPY docker-entrypoint.sh /_entrypoint.sh
ENTRYPOINT ["/_entrypoint.sh"]
CMD ["mysqld"]