class PulseCli < Formula
  desc "AI-first CLI for the Camunda 7 REST API (Operaton, CIB seven, Camunda 7)"
  homepage "https://miragon.github.io/pulse/cli/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Miragon/pulse/releases/download/v0.30.0/pulse-cli-macos-arm64.tar.xz"
      sha256 "bdc80762a0d4de96169fe594a96635e6ea33bfa22d20412b9298b90518139743"
    end
    on_intel do
      url "https://github.com/Miragon/pulse/releases/download/v0.30.0/pulse-cli-macos-x64.tar.xz"
      sha256 "9f18633944638d33e553ddc83ade4c03f92c2a1110be94e023efb659f1598970"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Miragon/pulse/releases/download/v0.30.0/pulse-cli-linux-arm64.tar.xz"
      sha256 "dc9e0113bcd8238ee163e8dd76f27c4bdb22baf1040ac9d79ecf160a283d5fbf"
    end
    on_intel do
      url "https://github.com/Miragon/pulse/releases/download/v0.30.0/pulse-cli-linux-x64.tar.xz"
      sha256 "b574c6b4c3b38201679403254ca90e9ddc00eb5ef660a033ab2334c562befd9d"
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
