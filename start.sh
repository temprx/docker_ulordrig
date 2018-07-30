#!/bin/bash
cat > config.txt <<CONFIG
"call_timeout": 10,
"retry_time": 30,
"giveup_limit": 0,
"verbose_level": $VERBOSE,
"print_motd": true,
"h_print_time": 60,
"aes_override": null,
"use_slow_memory": "warn",
"tls_secure_algo": true,
"daemon_mode": false,
"flush_stdout": true,
"output_file": "",
"httpd_port": $PORT,
"http_login": "",
"http_pass": "",
"prefer_ipv4": true,
CONFIG
docker build -t fabius8/ulordrig .

echo "start to run ulordrig"
docker run -d --name ulordrig fabius8/ulordrig
