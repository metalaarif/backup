#!/bin/bash
#################################
## A very simple backup script ##
#################################

echo "Starting backing up process...."

bak_dir='/home/aarif/Documents/'				# Provide Path or Source for the Backup
zips='tar -zcf'							# Use "tar" command to archive and compress the files and folders
sav_dir='/root/testdir'						# Provide Path or Destination for Backup to be saved
todaydate=$(date +"%m-%d-%y")					# Gives today's date

$zips $sav_dir/$todaydate.tar.gz --absolute-names $bak_dir	# It does it job by archiving, compressing and then saving it. 

echo "Backup Completed"
