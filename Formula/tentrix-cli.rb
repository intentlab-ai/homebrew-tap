class TentrixCli < Formula
  desc "Coding agents on Tentrix"
  homepage "https://github.com/intentlab-ai/tentrix"
  version "0.1.2"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://cli-dev.intentlab.ai/tentrix-cli/releases/v0.1.2/tentrix-cli_v0.1.2_darwin_arm64.tar.gz"
      sha256 "8730e5b10f66f68db4c554a8be0e1dcc863df2065b6b76b0b786c4bc19b0d669"
    else
      url "https://cli-dev.intentlab.ai/tentrix-cli/releases/v0.1.2/tentrix-cli_v0.1.2_darwin_amd64.tar.gz"
      sha256 "8def28d008fe00942fefd4ac0171403118138db0d0c748a7da1dba02b69d9c27"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://cli-dev.intentlab.ai/tentrix-cli/releases/v0.1.2/tentrix-cli_v0.1.2_linux_arm64.tar.gz"
      sha256 "29f3bdc6981fa9e11291e8b3bd1bc6c4b01c2443a009c1f530a94c3a8e57727a"
    else
      url "https://cli-dev.intentlab.ai/tentrix-cli/releases/v0.1.2/tentrix-cli_v0.1.2_linux_amd64.tar.gz"
      sha256 "b4a8fe6c0bc131ad800397cc3d2b6f4b856c000ddb0e4725a8e70305430da357"
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
