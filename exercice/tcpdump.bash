#!/bin/bash

tcpdump -i eth0 -l | grep 192.1.1.51 > capture
