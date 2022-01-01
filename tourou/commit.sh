#!/usr/bin/zsh

flutter pub run import_path_converter:main

flutter pub run import_sorter:main

flutter format -l 80 --fix lib

exit 0