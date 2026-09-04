class NhlTui < Formula
  desc "NHL scores and stats in your terminal"
  homepage "https://jp30566347.github.io/tui/nhl-tui/"
  version "0.1.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/jp30566347/tui/releases/download/nhl-tui-v0.1.1/nhl-tui-aarch64-apple-darwin.tar.gz"
      sha256 "b2589af43dbc5e75f022cf66d3af3d7246c039f6167cbf4a6c31e7d70627d29d"
    else
      url "https://github.com/jp30566347/tui/releases/download/nhl-tui-v0.1.1/nhl-tui-x86_64-apple-darwin.tar.gz"
      sha256 "fe2619fecee400c0def11349e9ad107d6d696a75ce5a65b62edbe2a58b49aa5e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/jp30566347/tui/releases/download/nhl-tui-v0.1.1/nhl-tui-aarch64-unknown-linux-musl.tar.gz"
      sha256 "1b96e6e434a3210781e100ca30528da3d266554530d915e14f8c35b97e06ccd4"
    else
      url "https://github.com/jp30566347/tui/releases/download/nhl-tui-v0.1.1/nhl-tui-x86_64-unknown-linux-musl.tar.gz"
      sha256 "8e043f7d42876a1f66b039a2301e243d04c23f70c0eb4eaf89579142bd834fb1"
    end
  end

  def install
    bin.install "nhl-tui"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nhl-tui --version")
  end
end
