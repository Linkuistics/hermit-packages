description = "Dolt – It's Git for Data"
binaries = ["bin/*"]
strip = 1
source = "https://github.com/dolthub/dolt/releases/download/v${version}/dolt-${os}-${arch}.tar.gz"

version "0.40.5" "0.40.6" "0.40.8" "0.40.9" "0.40.10" "0.40.11" "0.40.12" "0.40.14"
        "0.40.15" "0.40.16" "0.40.17" "0.40.18" "0.40.19" "0.40.20" "0.40.21" "0.40.22"
        "0.40.23" "0.40.24" "0.40.25" "0.40.26" "0.40.27" "0.40.28" "0.40.29" "0.40.30"
        "0.40.32" "0.41.1" "0.41.2" "0.41.3" "0.41.4" "0.41.5" {
  auto-version {
    github-release = "dolthub/dolt"
  }
}
