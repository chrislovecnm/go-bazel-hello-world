load("@io_bazel_rules_go//go:def.bzl", "gazelle", "go_binary", "go_library", "go_prefix")

go_prefix("github.com/chrislovecnm/go-bazel-hello-world")

# bazel rule definition
gazelle(
    name = "gazelle",
    command = "fix",
    prefix = "github.com/chrislovecnm/go-bazel-hello-world",
)
