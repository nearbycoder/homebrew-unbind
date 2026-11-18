class Unbind < Formula
  desc "Share TCP or UDP services over encrypted peer connections"
  homepage "https://unbind.dev"
  version "0.2.0"

  on_macos do
    on_arm do
      url "https://unbind.dev/downloads/releases/0.2.0/unbind-darwin-arm64"
      sha256 "e7ba7fb4e7c9f89090fd3a5dd630aa830de70a32f223bda544afcac5f9868ca1"
    end
    on_intel do
      url "https://unbind.dev/downloads/releases/0.2.0/unbind-darwin-amd64"
      sha256 "6178742052697ed107560640b4815fc2b1784595e8a5756594e8fc4bfe181195"
    end
  end

  on_linux do
    on_arm do
      url "https://unbind.dev/downloads/releases/0.2.0/unbind-linux-arm64"
      sha256 "67427098dd1a4d985c124a7c415ef5f1f416f6036c468a9cc31812e49febd2fa"
    end
    on_intel do
      url "https://unbind.dev/downloads/releases/0.2.0/unbind-linux-amd64"
      sha256 "6fd3141fb71737161b390a743bbf92a263685b08f463b378c5cef682ad271850"
    end
  end

  def install
    bin.install Dir["*unbind-*"].fetch(0) => "unbind"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/unbind --version")
  end
end
