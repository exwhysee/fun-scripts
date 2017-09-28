#!/bin/bash

make_color_gradient() {
  length_spaces=$(printf ' %.0s' $(seq 1 "${length}"))
  height=5
  # my favorite
  #color_num=30
  color_num=$(shuf -i ${height}-256 -n 1)


  for line in $(seq 0 "${height}"); do
    echo -e "\e[48;5;${color_num}m${length_spaces}\e[0m"
    color_num=$(( color_num - 1 ))
  done
}

length="${1:-50}"
make_color_gradient "${length}"
