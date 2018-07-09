#!/bin/sh

chown vmail:mail /var/vmail

syslogd
newaliases
postfix start
exec dovecot
# exec dovecot -F
