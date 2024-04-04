"GENERATED"

load("@rules_dotnet//dotnet:defs.bzl", "nuget_repo")

def main():
    "main"
    nuget_repo(
        name = "paket.main",
        packages = [
            {"name": "FSharp.Core", "id": "FSharp.Core", "version": "6.0.0", "sha512": "sha512-UctE9XWuh7qoF0t5hV2OGwNJFY9NPw+14u1Sm4oRyRQ9/fC/41TFFw65kQoCDfY1GFO/vU3f1BLt7I8+4AL29Q==", "sources": ["https://api.nuget.org/v3/index.json"], "dependencies": {"net11": [], "net20": [], "net30": [], "net35": [], "net40": [], "net403": [], "net45": [], "net451": [], "net452": [], "net46": [], "net461": [], "net462": [], "net47": [], "net471": [], "net472": [], "net48": [], "net5.0": [], "net6.0": [], "net7.0": [], "net8.0": [], "netcoreapp1.0": [], "netcoreapp1.1": [], "netcoreapp2.0": [], "netcoreapp2.1": [], "netcoreapp2.2": [], "netcoreapp3.0": [], "netcoreapp3.1": [], "netstandard": [], "netstandard1.0": [], "netstandard1.1": [], "netstandard1.2": [], "netstandard1.3": [], "netstandard1.4": [], "netstandard1.5": [], "netstandard1.6": [], "netstandard2.0": [], "netstandard2.1": []}, "targeting_pack_overrides": [], "framework_list": []},
        ],
    )
