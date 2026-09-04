class NhlTui < Formula
  desc "NHL scores and stats in your terminal"
  homepage "https://github.com/jp30566347/nhl-tui"
  version "0.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/jp30566347/nhl-tui/releases/download/v0.1.0/nhl-tui-aarch64-apple-darwin.tar.gz"
      sha256 "7909c7e8c6a91808e329097c7aaf2959ca7b7a131984e1031c04b8eedb758a8d"
    else
      url "https://github.com/jp30566347/nhl-tui/releases/download/v0.1.0/nhl-tui-x86_64-apple-darwin.tar.gz"
      sha256 "fd522d62026ceab2674751b96fb1bbf1b0a84d62d458102d6e2fe1fa0e9c8000"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/jp30566347/nhl-tui/releases/download/v0.1.0/nhl-tui-aarch64-unknown-linux-musl.tar.gz"
      sha256 "b0028fde394125f2cc0fb0623d6ef48bd82d32bedfed6a0aebe7c906e45a168f"
    else
      url "https://github.com/jp30566347/nhl-tui/releases/download/v0.1.0/nhl-tui-x86_64-unknown-linux-musl.tar.gz"
      sha256 "e6eb1cbbde6376aa8a1e26b998e752754eaef8c60e991efad8fe13eba8f354ff"
    end
  end

  def install
    bin.install "nhl-tui"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nhl-tui --version")
  end
end
