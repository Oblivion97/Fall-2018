#!/bin/bash

banner()
{
  echo "+------------------------------------------+"
  printf "| %-40s |\n" "`date`"
  echo "|                                          |"
  printf "|`tput bold` %-40s `tput sgr0`|\n" "$@"
  echo "+------------------------------------------+"
}

banner "Starting the Job"
sleep 3

banner "Copying files"
cp -v /etc/hosts /tmp
cp -v /etc/passwd /tmp
sleep 4

banner "Downloading article"
curl https://www.shellscript.sh/tips/banner/ > /tmp/banner.html
sleep 5

banner "Finished."
