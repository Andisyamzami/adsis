#!/bin/bash
periksakoneksi()
{
  if ping -q -c 1 -W 1 8.8.8.8 >/dev/null; then
    echo "IPv4 is up"
  else
    echo "IPv4 is down"
  fi
}

periksakoneksi1()
{
if ping -q -c 1 -W 1 google.com >/dev/null; then
  echo "The network is up"
else
  echo "The network is down"
fi
}

periksakoneksi
periksakoneksi1
