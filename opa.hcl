description = "The Open Policy Agent (OPA) is an open source, general-purpose policy engine that enables unified, context-aware policy enforcement across the entire stack."
binaries = ["opa"]
test = "opa version"

version "0.30.1" {
  linux {
    source = "https://github.com/open-policy-agent/opa/releases/download/v${version}/opa_linux_amd64"

    on "unpack" {
      rename {
        from = "${root}/opa_linux_amd64"
        to = "${root}/opa"
      }
    }
  }

  darwin {
    source = "https://github.com/open-policy-agent/opa/releases/download/v${version}/opa_darwin_amd64"

    on "unpack" {
      rename {
        from = "${root}/opa_darwin_amd64"
        to = "${root}/opa"
      }
    }
  }
}

version "0.38.1" "0.43.0" "0.44.0" {
  source = "https://github.com/open-policy-agent/opa/releases/download/v${version}/opa_${os}_${arch}_static"

  on "unpack" {
    rename {
      from = "${root}/opa_${os}_${arch}_static"
      to = "${root}/opa"
    }
  }

  // For some reason all platforms _except_ darwin/amd64 are static.
  platform "darwin" "amd64" {
    source = "https://github.com/open-policy-agent/opa/releases/download/v${version}/opa_darwin_amd64"

    on "unpack" {
      rename {
        from = "${root}/opa_darwin_amd64"
        to = "${root}/opa"
      }
    }
  }

  auto-version {
    github-release = "open-policy-agent/opa"
  }
}
