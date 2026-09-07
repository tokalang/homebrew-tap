class Trg < Formula
  desc "Fast, agent-friendly code search and hydration tool with native MCP support"
  homepage "https://github.com/tokalang/trg"
  version "0.15.0"
  license "Apache-2.0"

  on_macos do
    depends_on arch: :arm64

    url "https://github.com/tokalang/trg/releases/download/v0.15.0/trg-v0.15.0-macos-arm64.tar.gz"
    sha256 "25929b41e4cad1572e4e933bc484a24a07b247fcedd9d1300cd5ec1bd934fde4"
  end

  on_linux do
    depends_on arch: :x86_64

    url "https://github.com/tokalang/trg/releases/download/v0.15.0/trg-v0.15.0-linux-x64.tar.gz"
    sha256 "b39ec25f38a39919091a62ec70783d5f8d0187b152244d4841c237231171c415"
  end

  def install
    bin.install "trg"
  end

  test do
    assert_match "trg #{version}", shell_output("#{bin}/trg --version")
  end
end
