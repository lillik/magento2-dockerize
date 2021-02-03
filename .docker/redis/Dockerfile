FROM redis:6.0.9
LABEL MAINTAINER="LillikPro <support@lillik.pro>"

COPY conf/redis.conf /usr/local/etc/redis/redis.conf

EXPOSE 6379 1985
CMD ["redis-server", "/usr/local/etc/redis/redis.conf"]