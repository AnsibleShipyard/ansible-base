#!/bin/bash

DOCKERNAME="ansibleshipyard/ansible-base"
TAGS=(ubuntu centos)

usage() {
  local tag=$1

  echo
  echo "To pull it"
  echo "    docker pull $DOCKERNAME:$tag"
  echo
  echo "To use this docker:"
  echo "    docker run -d -P $DOCKERNAME:$tag"
  echo
  echo "To run in interactive mode for debug:"
  echo "    docker run -t -i $DOCKERNAME:$tag bash"
  echo
}

build() {
  local tag=$1

  pushd $tag

  # Builds the image
  cmd=time docker build --force-rm -t $DOCKERNAME:$tag .

  echo "$cmd"

  run=$($cmd)

  if [ $? == 0 ]; then
    usage $tag
    popd
  else
    echo "Build failed!"
    exit 1
  fi;
}

for tag in ${TAGS[@]}; do
  build ${tag}
done
