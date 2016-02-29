#!/bin/bash
haritanggal()
{
 echo $(date) | awk '{print $1" "$2" "$3}'
}
durasi()
{
 echo $(uptime) | awk '{print $2" "$3" "$4}' | awk -F',' '{print $1}'
}
haritanggal
durasi
