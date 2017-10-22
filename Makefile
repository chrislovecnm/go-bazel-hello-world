all:
	bazel build //...

test:
	bazel test //...

gofmt:
	gofmt -w -s pkg/ cmd/

gazelle:
	bazel run //:gazelle
