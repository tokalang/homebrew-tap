class Trg < Formula
  desc "Fast, agent-friendly code search and hydration tool with native MCP support"
  homepage "https://github.com/tokalang/trg"
  version "0.19.0"
  license "Apache-2.0"

  on_macos do
    depends_on arch: :arm64

    url "https://github.com/tokalang/trg/releases/download/v0.19.0/trg-v0.19.0-macos-arm64.tar.gz"
    sha256 "65d6b2039b5b15641eaa33efe76d4e327a57e5ca74f5ccb3015992c884f424e8"
  end

  on_linux do
    depends_on arch: :x86_64

    url "https://github.com/tokalang/trg/releases/download/v0.19.0/trg-v0.19.0-linux-x64.tar.gz"
    sha256 "f802f5205adc342e2b292b372a95882465f5cf661de4b8c341c98bbfdc1dd992"
  end

  def install
    bin.install "trg"
  end

  test do
    assert_match "trg #{version}", shell_output("#{bin}/trg --version")
  end
end
