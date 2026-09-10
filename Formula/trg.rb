class Trg < Formula
  desc "Fast, agent-friendly code search and hydration tool with native MCP support"
  homepage "https://github.com/tokalang/trg"
  version "0.17.0"
  license "Apache-2.0"

  on_macos do
    depends_on arch: :arm64

    url "https://github.com/tokalang/trg/releases/download/v0.17.0/trg-v0.17.0-macos-arm64.tar.gz"
    sha256 "e15afcab78e3913c09a6b94a05b4e159f99931b2493caf7428e130760bd949d3"
  end

  on_linux do
    depends_on arch: :x86_64

    url "https://github.com/tokalang/trg/releases/download/v0.17.0/trg-v0.17.0-linux-x64.tar.gz"
    sha256 "2e80242e5e0e6d5b2890485da418ca57a00c4df7933a2e0503f3c9fa8deed328"
  end

  def install
    bin.install "trg"
  end

  test do
    assert_match "trg #{version}", shell_output("#{bin}/trg --version")
  end
end
