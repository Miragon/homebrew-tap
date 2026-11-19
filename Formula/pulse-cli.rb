class PulseCli < Formula
  desc "AI-first CLI for the Camunda 7 REST API (Operaton, CIB seven, Camunda 7)"
  homepage "https://miragon.github.io/pulse/cli/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Miragon/pulse/releases/download/v0.29.0/pulse-cli-macos-arm64.tar.xz"
      sha256 "94dea509f13e4332ca81410631c39858997dc0d77abded1c2aec4bc0b6b2abd9"
    end
    on_intel do
      url "https://github.com/Miragon/pulse/releases/download/v0.29.0/pulse-cli-macos-x64.tar.xz"
      sha256 "2d1c688367fb84f344a9e65de7c9babb94cce3ffa1c1c166ece9f647a070d27a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Miragon/pulse/releases/download/v0.29.0/pulse-cli-linux-arm64.tar.xz"
      sha256 "a419fb8b204f10a7f53269c89649baa1f408c1d3d948f46fc6471bdeed31a2c5"
    end
    on_intel do
      url "https://github.com/Miragon/pulse/releases/download/v0.29.0/pulse-cli-linux-x64.tar.xz"
      sha256 "a5ea080808cf29e6df1cc0e6955ab16f614cd0240e6c60c01bab8978c13e88cb"
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
