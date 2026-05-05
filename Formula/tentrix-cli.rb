class TentrixCli < Formula
  desc "Coding agents on Tentrix"
  homepage "https://github.com/intentlab-ai/tentrix"
  version "0.1.3"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://cli-dev.intentlab.ai/tentrix-cli/releases/v0.1.3/tentrix-cli_v0.1.3_darwin_arm64.tar.gz"
      sha256 "ba00e44c2da443e192a381826021bf954aaa05843ee354e026ce44171bf62797"
    else
      url "https://cli-dev.intentlab.ai/tentrix-cli/releases/v0.1.3/tentrix-cli_v0.1.3_darwin_amd64.tar.gz"
      sha256 "a6987ef206e8c9917b921c8246951e603bc020d20881d0c400dc16afdb979a99"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://cli-dev.intentlab.ai/tentrix-cli/releases/v0.1.3/tentrix-cli_v0.1.3_linux_arm64.tar.gz"
      sha256 "1da77d578cac6165d809e706cc6511f42a519830db58b64732d8c39fb51c5705"
    else
      url "https://cli-dev.intentlab.ai/tentrix-cli/releases/v0.1.3/tentrix-cli_v0.1.3_linux_amd64.tar.gz"
      sha256 "69ab6eb5ed99145274726c7748d7e6b268d7c0e7197a1198d5e496a9fa4b0c97"
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
