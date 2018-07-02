#!/bin/sh

newaliases
postfix start
exec dovecot -F
