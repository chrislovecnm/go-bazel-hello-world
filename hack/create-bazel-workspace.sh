#!/bin/bash

if [ -z "$1" ]; then 
  echo >&2 "please provide your projects base go path as an argument."
  ehco >&2 "For example: github.com/chrislovecnm/go-bazel-hello-world"
  exit 1 
fi

PREFIX=$1

cat > WORKSPACE <<- EOM
git_repository(
    name = "io_bazel_rules_go",
    remote = "https://github.com/bazelbuild/rules_go.git",
    tag = "0.6.0",
)

load("@io_bazel_rules_go//go:def.bzl", "go_rules_dependencies", "go_register_toolchains", "go_repository")
go_rules_dependencies()
go_register_toolchains()

go_repository(
    name = "com_github_golang_glog",
    commit = "23def4e6c14b4da8ac2ed8007337bc5eb5007998",
    importpath = "github.com/golang/glog",
)

go_repository(
    name = "com_github_spf13_cobra",
    commit = "7b1b6e8dc027253d45fc029bc269d1c019f83a34",
    importpath = "github.com/spf13/cobra",
)

go_repository(
    name = "com_github_spf13_pflag",
    commit = "f1d95a35e132e8a1868023a08932b14f0b8b8fcb",
    importpath = "github.com/spf13/pflag",
)
EOM

cat > BUILD <<- EOMB
load("@io_bazel_rules_go//go:def.bzl", "go_prefix", "gazelle")

go_prefix("${PREFIX}")

# bazel rule definition
gazelle(
  prefix = "${PREFIX}",
  name = "gazelle",
  command = "fix",
)
EOMB

echo "project WORKSPACE and BUILD files created, run gazelle to create required BUILD.bazel files"
