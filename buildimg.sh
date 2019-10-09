#!/bin/sh

for _file in dot/*.dot; do
  _target=img/`basename img/${_file%.*}`.png
  dot -Tpng ${_file} -o ${_target}
done
