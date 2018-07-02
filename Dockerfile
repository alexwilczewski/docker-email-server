FROM alpine:3.7

RUN apk add --no-cache postfix dovecot

RUN mkdir /etc/ssl/mail \
  && touch /etc/ssl/mail/mailcert.crt \
  && touch /etc/ssl/mail/mailkey.key

RUN mkdir /var/vmail \
  && chown vmail:mail /var/vmail

COPY start.sh /bin/start

CMD ["start"]
