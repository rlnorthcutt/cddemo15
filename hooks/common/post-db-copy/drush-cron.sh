#!/bin/sh
#
# Cloud Hook: drush-cache-clear
#
# Run drush cache-clear all in the target environment. This script works as
# any Cloud hook.


# Map the script inputs to convenient names.
site=$1
target_env=$2
drush_alias=$site'.'$target_env

echo "Hello! I am a shell script that is automatically executed after every database copy using an Acquia post-db-copy Cloud Hook!"

# Execute a standard drush command.
echo "firing drush cron"
drush @$drush_alias cron -v
echo "cron complete"

echo "you can execute all sorts of cool stuff here..."

echo "Acquia post-db-copy Cloud Hook complete!"
