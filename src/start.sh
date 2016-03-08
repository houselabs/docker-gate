#!/bin/bash
/sbin/iptables-restore /conf/rules.v4
supervisord
