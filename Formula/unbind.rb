class Unbind < Formula
  desc "Share TCP or UDP services over encrypted peer connections"
  homepage "https://unbind.dev"
  version "0.2.1"

  on_macos do
    on_arm do
      url "https://unbind.dev/downloads/releases/0.2.1/unbind-darwin-arm64"
      sha256 "0d7df3c93dece3dd3581843aea7b234c965b5aa6678aad85c6168a3d0595dd91"
    end
    on_intel do
      url "https://unbind.dev/downloads/releases/0.2.1/unbind-darwin-amd64"
      sha256 "14d5f9b824f6f0a6d8070ff01bddc413a9d7c5ddcc1f8e4a2db639dbf4fe66ac"
    end
  end

  on_linux do
    on_arm do
      url "https://unbind.dev/downloads/releases/0.2.1/unbind-linux-arm64"
      sha256 "5f9fbb85267a80a749cf721ecf587781ae199ccd967dee85f128814f67bfffd0"
    end
    on_intel do
      url "https://unbind.dev/downloads/releases/0.2.1/unbind-linux-amd64"
      sha256 "36e7dbf9ca5fd97299c33ea32bb2f93ad0c76823fbd763002d444b9dfcae40cc"
    end
  end

  def install
    bin.install Dir["*unbind-*"].fetch(0) => "unbind"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/unbind --version")
  end
end
