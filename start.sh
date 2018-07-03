#!/bin/sh

chown vmail:mail /var/vmail
newaliases
postfix start
exec dovecot -F
