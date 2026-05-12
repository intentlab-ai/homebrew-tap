class TentrixCli < Formula
  desc "Coding agents on Tentrix"
  homepage "https://github.com/intentlab-ai/tentrix"
  version "0.1.6"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://cli-dev.intentlab.ai/tentrix-cli/releases/v0.1.6/tentrix-cli_v0.1.6_darwin_arm64.tar.gz"
      sha256 "e686db5f29e928291beefd75c1bdc21118e79a4187f93822c461fb5932f447fc"
    else
      url "https://cli-dev.intentlab.ai/tentrix-cli/releases/v0.1.6/tentrix-cli_v0.1.6_darwin_amd64.tar.gz"
      sha256 "4526ee8496008f19c51a99071cc286621200102ab9db2bae6d6779363bc2ace6"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://cli-dev.intentlab.ai/tentrix-cli/releases/v0.1.6/tentrix-cli_v0.1.6_linux_arm64.tar.gz"
      sha256 "b47fb6b9ae76f8d6682cc56d2c8a53b0dc332d43568d15a3b4cf867d1ea794ca"
    else
      url "https://cli-dev.intentlab.ai/tentrix-cli/releases/v0.1.6/tentrix-cli_v0.1.6_linux_amd64.tar.gz"
      sha256 "37e56aab46298d265e4f004633c50dfcd05b4e0f9d17cbe29001ec6e95cf42c9"
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
