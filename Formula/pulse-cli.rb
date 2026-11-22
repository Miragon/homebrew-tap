class PulseCli < Formula
  desc "AI-first CLI for the Camunda 7 REST API (Operaton, CIB seven, Camunda 7)"
  homepage "https://miragon.github.io/pulse/cli/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Miragon/pulse/releases/download/v0.31.0/pulse-cli-macos-arm64.tar.xz"
      sha256 "9f8bf85a9d8031d3e659bdd76d0c19555f3ee7fcd6f765237360bbd9977c6ff3"
    end
    on_intel do
      url "https://github.com/Miragon/pulse/releases/download/v0.31.0/pulse-cli-macos-x64.tar.xz"
      sha256 "a9adce350e826bdce64cb6808ad497aa70011ddb172592bcbe0cd701e0d8c500"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Miragon/pulse/releases/download/v0.31.0/pulse-cli-linux-arm64.tar.xz"
      sha256 "584b2324caa144ada0dc852595292cd53666b38fdc5c1c1e889af2dfd33682b8"
    end
    on_intel do
      url "https://github.com/Miragon/pulse/releases/download/v0.31.0/pulse-cli-linux-x64.tar.xz"
      sha256 "9e84ea51fdde40284905f3fa86acf92e72ebc8e02a18b263970450107afe84b2"
    end
  end

  def install
    bin.install "pulse-cli"
    bin.install_symlink bin/"pulse-cli" => "pulse"
    prefix.install "NODE_LICENSE", "THIRD_PARTY_LICENSES.txt"
  end

  test do
    assert_equal version.to_s, shell_output("#{bin}/pulse --version").strip
    assert_equal version.to_s, shell_output("#{bin}/pulse-cli --version").strip
  end
end
