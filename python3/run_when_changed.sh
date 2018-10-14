#!/bin/sh

while inotifywait -e close_write ./koans/*.py; do python3 -B contemplate_koans.py; done

