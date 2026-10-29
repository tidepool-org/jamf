#!/bin/bash

# ref: https://emudhra.we-have-a-problem.com/#workarounds

cp -p /etc/ssl/cert.pem /etc/ssl/cert.pem.bak
awk '/^(###|===) /{skip=0}
  /^=== .*\/CN=(AAA Certificate Services|emSign ECC Root CA - G3)$/{skip=1}
  !skip' /etc/ssl/cert.pem.bak > /etc/ssl/cert.pem
