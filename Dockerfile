FROM alpine:3.8

RUN apk add --no-cache postfix dovecot

RUN mkdir /etc/ssl/mail \
  && touch /etc/ssl/mail/mailcert.crt \
  && touch /etc/ssl/mail/mailkey.key

COPY start.sh /bin/start
RUN chmod 700 /bin/start

CMD ["start"]
