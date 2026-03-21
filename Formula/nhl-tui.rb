class NhlTui < Formula
  desc "NHL scores and stats in your terminal"
  homepage "https://github.com/jp30566347/nhl-tui"
  version "0.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/jp30566347/nhl-tui/releases/download/v0.1.0/nhl-tui-aarch64-apple-darwin.tar.gz"
      sha256 "PLACEHOLDER_ARM64_SHA256"
    else
      url "https://github.com/jp30566347/nhl-tui/releases/download/v0.1.0/nhl-tui-x86_64-apple-darwin.tar.gz"
      sha256 "PLACEHOLDER_X86_64_SHA256"
    end
  end

  def install
    bin.install "nhl-tui"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nhl-tui --version")
  end
end
