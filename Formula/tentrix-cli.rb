class TentrixCli < Formula
  desc "Coding agents on Tentrix"
  homepage "https://github.com/intentlab-ai/tentrix"
  version "0.1.2"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://cli-dev.intentlab.ai/tentrix-cli/releases/v0.1.2/tentrix-cli_v0.1.2_darwin_arm64.tar.gz"
      sha256 "cf376fc79fd77acfd0758084810b7583d29c92f596b7cab049fc72635df7ceef"
    else
      url "https://cli-dev.intentlab.ai/tentrix-cli/releases/v0.1.2/tentrix-cli_v0.1.2_darwin_amd64.tar.gz"
      sha256 "43e0c4bfa8ba57063434dd9af56528c918513ec2f8663a3c9b83d4a1b9768276"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://cli-dev.intentlab.ai/tentrix-cli/releases/v0.1.2/tentrix-cli_v0.1.2_linux_arm64.tar.gz"
      sha256 "b64b89cd9727b6d30950feff40901079e0ebd4e34ff456ca4ec156f695f8cd93"
    else
      url "https://cli-dev.intentlab.ai/tentrix-cli/releases/v0.1.2/tentrix-cli_v0.1.2_linux_amd64.tar.gz"
      sha256 "c214ebfa0407174d6f32bbb9990528f417cbf9099909f80a3e5232564e444baf"
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
