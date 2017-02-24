#!/bin/bash

usage() {
  echo "Usage:"
  echo "$0 <issue-number>"
  exit 1
}

if [ $# -ne 1 ]; then
  usage
fi

num=$1

python -m markdown issue$num/post.md > issue$num/post.html
markdown-css issue$num/post.html --out=issue$num --name=post-css.html --style=xiaolai.css 
open issue$num/post-css.html
