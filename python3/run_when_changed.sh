#!/bin/sh

uname_output="$(uname)"
case "${uname_output}" in
  Linux*)   while inotifywait -e close_write ./koans/*.py; do ./run.sh; done;;
  Darwin*)  fswatch ./koans/*.py | (while read; do ./run.sh; done);;
  *) run.sh
esac

