class TentrixCli < Formula
  desc "Coding agents on Tentrix"
  homepage "https://github.com/intentlab-ai/tentrix"
  version "0.1.4"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://cli-dev.intentlab.ai/tentrix-cli/releases/v0.1.4/tentrix-cli_v0.1.4_darwin_arm64.tar.gz"
      sha256 "e13511bf527080c25338e1b8c4dce1c6b429b4d8a63f26f9b35066b864feebc9"
    else
      url "https://cli-dev.intentlab.ai/tentrix-cli/releases/v0.1.4/tentrix-cli_v0.1.4_darwin_amd64.tar.gz"
      sha256 "04a932c816830d092422cec0326537f25911a2606c8371cb309a9d36e51036da"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://cli-dev.intentlab.ai/tentrix-cli/releases/v0.1.4/tentrix-cli_v0.1.4_linux_arm64.tar.gz"
      sha256 "283600e4dbcb82f85b0282deae03c8b6d0ff4b368af4b30c9aa46f27f36e87ef"
    else
      url "https://cli-dev.intentlab.ai/tentrix-cli/releases/v0.1.4/tentrix-cli_v0.1.4_linux_amd64.tar.gz"
      sha256 "7ff7c7bdd40c3f7503582df126bd9bf8c830b7852226aa5c14d3228b63f50150"
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
