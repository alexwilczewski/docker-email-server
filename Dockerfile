FROM alpine:3.7

RUN apk add --no-cache postfix dovecot

CMD ["/bin/sh"]


# Post start
# Sync updates to aliases file.
# newaliases
#
# postfix start