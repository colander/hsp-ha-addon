ARG BUILD_FROM
FROM ghcr.io/colander/hsp-mqtt-bridge:main AS hsp

FROM $BUILD_FROM

COPY --from=hsp /bin/hsp-stove /bin/hsp-stove

COPY run.sh /
RUN chmod a+x /run.sh

CMD ["/run.sh"]