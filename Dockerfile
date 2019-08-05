FROM registry.access.redhat.com/ubi7/ubi:7.6-123
COPY setuid /bin/setuid
USER 0
RUN chown root /bin/setuid && chmod a+x,u+s /bin/setuid
USER 1001
CMD ["sh", "-c", "tail -f /dev/null"]
