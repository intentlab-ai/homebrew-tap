class TentrixCli < Formula
  desc "Coding agents on Tentrix"
  homepage "https://github.com/intentlab-ai/tentrix"
  version "0.1.0"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://cli.intentlab.ai/tentrix-cli/releases/v0.1.0/tentrix-cli_v0.1.0_darwin_arm64.tar.gz"
      sha256 "608c2982984a85df3c0635b0a0771ea776c1e9c5483329e4b4d20bc539e48769"
    else
      url "https://cli.intentlab.ai/tentrix-cli/releases/v0.1.0/tentrix-cli_v0.1.0_darwin_amd64.tar.gz"
      sha256 "344a0fb4905b7612b35e0da6dfbfa16a0ea7e4db1409d76404a8ea5487525016"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://cli.intentlab.ai/tentrix-cli/releases/v0.1.0/tentrix-cli_v0.1.0_linux_arm64.tar.gz"
      sha256 "f640f3a51a81d8e467996630502f721fa00c45b4b8d6ffd63c460872442ea940"
    else
      url "https://cli.intentlab.ai/tentrix-cli/releases/v0.1.0/tentrix-cli_v0.1.0_linux_amd64.tar.gz"
      sha256 "96bb7dc2c8a25a205ab60f3d2980b6b26caff8a4d57b8a336660e30ff045ff87"
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
