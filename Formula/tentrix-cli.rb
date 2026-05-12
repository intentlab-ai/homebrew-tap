class TentrixCli < Formula
  desc "Coding agents on Tentrix"
  homepage "https://github.com/intentlab-ai/tentrix"
  version "0.1.5"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://cli.intentlab.ai/tentrix-cli/releases/v0.1.5/tentrix-cli_v0.1.5_darwin_arm64.tar.gz"
      sha256 "c3e5573635f77fd3e6395613a4a7274ddc1396c08bf18b63b64c5cc034f4a571"
    else
      url "https://cli.intentlab.ai/tentrix-cli/releases/v0.1.5/tentrix-cli_v0.1.5_darwin_amd64.tar.gz"
      sha256 "468e6dd755923940d8bc95caf804e6cfa77f8e7cc05433d590956dcdaf6d7b5a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://cli.intentlab.ai/tentrix-cli/releases/v0.1.5/tentrix-cli_v0.1.5_linux_arm64.tar.gz"
      sha256 "068b69ee9579421842734fa73709e515ff0a18d051c9ef515a0c6fe05a3bc980"
    else
      url "https://cli.intentlab.ai/tentrix-cli/releases/v0.1.5/tentrix-cli_v0.1.5_linux_amd64.tar.gz"
      sha256 "cf0fc3ccf2865df52e85e2929b93b8144091807680eefb54810af8786803e788"
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
