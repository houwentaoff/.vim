#!/bin/bash - 
#===============================================================================
#
#          FILE: cgrep.sh
# 
#         USAGE: ./cppgrep.sh 
# 
#   DESCRIPTION: 
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: Dr. Fritz Mehner (fgm), mehner.fritz@fh-swf.de
#  ORGANIZATION: FH Südwestfalen, Iserlohn, Germany
#       CREATED: 11/14/2018 14:59
#      REVISION:  ---
#===============================================================================

set -o nounset                              # Treat unset variables as an error

find ./ -iname '*.cpp' -o -iname '*.h' |xargs grep -in --color "$1"
