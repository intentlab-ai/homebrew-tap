class TentrixCli < Formula
  desc "Coding agents on Tentrix"
  homepage "https://github.com/intentlab-ai/tentrix"
  version "0.1.5"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://cli-dev.intentlab.ai/tentrix-cli/releases/v0.1.5/tentrix-cli_v0.1.5_darwin_arm64.tar.gz"
      sha256 "7fd1b333ca4ffa7b53724d40fa1fd8787bc9c88bd5b1cf739a3f6ddf1725e1f9"
    else
      url "https://cli-dev.intentlab.ai/tentrix-cli/releases/v0.1.5/tentrix-cli_v0.1.5_darwin_amd64.tar.gz"
      sha256 "d171914c5dad1b8420ebe6c2f487e1be28cafd8d04c87bc62ec3747353224556"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://cli-dev.intentlab.ai/tentrix-cli/releases/v0.1.5/tentrix-cli_v0.1.5_linux_arm64.tar.gz"
      sha256 "5265424bc46539178668ab7a500940cf453366afe1f530d7527452c695e6cc97"
    else
      url "https://cli-dev.intentlab.ai/tentrix-cli/releases/v0.1.5/tentrix-cli_v0.1.5_linux_amd64.tar.gz"
      sha256 "9fac97cfec1cc8e15d210bb5b746a069608a2e37169fde82a1ee5076b0a02439"
    end
  end

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"bin/tentrix-cli" => "tentrix-cli"
  end

  test do
    assert_match "tentrix-cli", shell_output("#{bin}/tentrix-cli version")
  end
end
