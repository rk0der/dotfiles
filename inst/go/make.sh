#!/bin/sh

RM="rm -rf"
EXE="/bin/sh -cx"

dir=$(cd $(dirname $0) && pwd)
repo_dir=${dir}/../..
. ${repo_dir}/sh/util.sh
. ${repo_dir}/env.sh

export GOPATH=$GOPATH
gopath=$(go env GOPATH)
git config --global ghq.root $GOPATH/src

if [ "$1" = "install" ]; then
  go get github.com/motemen/ghq
  go get github.com/Songmu/ghg/cmd/ghg
  go get -u github.com/nsf/gocode
elif [ "$1" = "clean" ]; then
  ${EXE} "${RM} $(ghq list -p -e gocode)"
  ${EXE} "${RM} $(ghq list -p -e ghg)"
  ${EXE} "${RM} ${gopath}/bin/ghg"
  ${EXE} "${RM} $(ghq list -p -e ghq)"
  ${EXE} "${RM} ${gopath}/bin/ghq"
fi