load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")
load("@bazel_tools//tools/build_defs/repo:git.bzl", "git_repository")



# rules_docker
http_archive(
  name = "io_bazel_rules_docker",
  sha256 = "b1e80761a8a8243d03ebca8845e9cc1ba6c82ce7c5179ce2b295cd36f7e394bf",
  urls = [
    "https://github.com/bazelbuild/rules_docker/releases/download/v0.25.0/rules_docker-v0.25.0.tar.gz",
  ],
)

load(
  "@io_bazel_rules_docker//repositories:repositories.bzl",
  container_repositories = "repositories",
)

container_repositories()

load("@io_bazel_rules_docker//repositories:deps.bzl", container_deps = "deps")

container_deps()



# rules_dotnet
git_repository(
  name = "rules_dotnet",
  remote = "https://github.com/bazelbuild/rules_dotnet",
  # branch = "next",
  shallow_since = "1669891734 +0000",
  commit = "676afa71271cd10a9731e9103c01dd1d9579af39",
)

load(
  "@rules_dotnet//dotnet:repositories.bzl",
  "dotnet_register_toolchains",
  "rules_dotnet_dependencies",
)

rules_dotnet_dependencies()

dotnet_register_toolchains("dotnet", "6.0.200") # This is compatible with AWS Lambda

load("@rules_dotnet//dotnet:rules_dotnet_nuget_packages.bzl", "rules_dotnet_nuget_packages")

rules_dotnet_nuget_packages()

load("@rules_dotnet//dotnet:paket2bazel_dependencies.bzl", "paket2bazel_dependencies")

paket2bazel_dependencies()

load("//deps:paket.bzl", "paket")

paket()



# Containers
load("@io_bazel_rules_docker//container:container.bzl", "container_pull")

container_pull(
  name = "dotnet_runtime_deps_6_0_10",
  registry = "mcr.microsoft.com",
  repository = "dotnet/runtime-deps",
  tag = "6.0.10-bullseye-slim-amd64",
  digest = "sha256:24554fadd483d8305974ded44bb1dbe4916e2f02500b9e2d78e7beb557cfebd0"
)

container_pull(
  name = "dotnet_runtime_deps_alpine_3_16",
  registry = "mcr.microsoft.com",
  repository = "dotnet/runtime-deps",
  tag = "6.0.10-alpine3.16-amd64",
  digest = "sha256:3a4197e1da3bb5e5a97bdfa062ae0e4a55150cfe023d101a2e8cf107a6ac2be3",
)
