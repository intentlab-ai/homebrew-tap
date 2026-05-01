class TentrixCli < Formula
  desc "Coding agents on Tentrix"
  homepage "https://github.com/intentlab-ai/tentrix"
  version "0.1.1"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://cli-dev.intentlab.ai/tentrix-cli/releases/v0.1.1/tentrix-cli_v0.1.1_darwin_arm64.tar.gz"
      sha256 "cb9cfcad8092ad112016cdcad0b17652165a9f665bbf4269b24aa761f3558963"
    else
      url "https://cli-dev.intentlab.ai/tentrix-cli/releases/v0.1.1/tentrix-cli_v0.1.1_darwin_amd64.tar.gz"
      sha256 "72698c524edd2f76828c33f99a20bc8d19f489e23211186bf59f669f02f4169f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://cli-dev.intentlab.ai/tentrix-cli/releases/v0.1.1/tentrix-cli_v0.1.1_linux_arm64.tar.gz"
      sha256 "0df3f7c30b598a8b3c9a99d36a200655eca0c00e23d1e687d7198e46225067a5"
    else
      url "https://cli-dev.intentlab.ai/tentrix-cli/releases/v0.1.1/tentrix-cli_v0.1.1_linux_amd64.tar.gz"
      sha256 "f154aab7d4bf9710a0002e0e71472f12a2920c0815f6d66626677c6c41c33d76"
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
