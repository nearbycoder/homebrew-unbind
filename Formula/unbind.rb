class Unbind < Formula
  desc "Share TCP or UDP services over encrypted peer connections"
  homepage "https://unbind.dev"
  version "0.3.0"

  on_macos do
    on_arm do
      url "https://unbind.dev/downloads/releases/0.3.0/unbind-darwin-arm64"
      sha256 "04780bdff295d6a85770e1e7300c62edbf77b63073f6dbbcda538bf57000445f"
    end
    on_intel do
      url "https://unbind.dev/downloads/releases/0.3.0/unbind-darwin-amd64"
      sha256 "03cabc403cb382894fa737f4261cf6e62993db136ff5516f81f4765b40e9360e"
    end
  end

  on_linux do
    on_arm do
      url "https://unbind.dev/downloads/releases/0.3.0/unbind-linux-arm64"
      sha256 "27ba8f65866f9ff5ec890f62c4f75a1e75dd65a70955126f1df8d02f80681162"
    end
    on_intel do
      url "https://unbind.dev/downloads/releases/0.3.0/unbind-linux-amd64"
      sha256 "41a11c5852cd90decf7ea7594d5e2a0178b39cb64caeee9cd9faed446573c484"
    end
  end

  def install
    bin.install Dir["*unbind-*"].fetch(0) => "unbind"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/unbind --version")
  end
end
