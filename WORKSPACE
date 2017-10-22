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

go_repository(
    name = "com_github_spf13_viper",
    commit = "8ef37cbca71638bf32f3d5e194117d4cb46da163",
    importpath = "github.com/spf13/viper",
)

go_repository(
    name = "com_github_mitchellh_go_homedir",
    importpath = "github.com/mitchellh/go-homedir",
    commit = "b8bc1bf767474819792c23f32d8286a45736f1c6",
)

go_repository(
   name = "com_github_magiconair_properties",
   importpath = "github.com/magiconair/properties",
   commit = "be5ece7dd465ab0765a9682137865547526d1dfb",
)

go_repository(
   name = "com_github_fsnotify_fsnotify",
   importpath = "github.com/fsnotify/fsnotify",
   commit = "629574ca2a5df945712d3079857300b5e4da0236",
)

go_repository(
  name = "com_github_pelletier_go_toml",
  importpath = "github.com/pelletier/go-toml",
  commit = "16398bac157da96aa88f98a2df640c7f32af1da2",
)

go_repository(
  name = "com_github_hashicorp_hcl",
  importpath = "github.com/hashicorp/hcl",
  commit = "23c074d0eceb2b8a5bfdbb271ab780cde70f05a8",
)

go_repository(
  name = "com_github_spf13_afero",
  importpath = "github.com/spf13/afero",
  commit = "5660eeed305fe5f69c8fc6cf899132a459a97064",
)

go_repository(
  name = "com_github_mitchellh_mapstructure",
  importpath = "github.com/mitchellh/mapstructure",
  commit = "06020f85339e21b2478f756a78e295255ffa4d6a",
)

go_repository(
  name = "com_github_spf13_jwalterweatherman",
  importpath = "github.com/spf13/jWalterWeatherman",
  commit = "12bd96e66386c1960ab0f74ced1362f66f552f7b",
)
