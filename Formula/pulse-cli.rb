class PulseCli < Formula
  desc "AI-first CLI for the Camunda 7 REST API (Operaton, CIB seven, Camunda 7)"
  homepage "https://miragon.github.io/pulse/cli/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Miragon/pulse/releases/download/v0.28.0/pulse-cli-macos-arm64.tar.xz"
      sha256 "ebe54048aa28f9755caf476f316fa342450b08c2ebf4f2704b2b79cde2139514"
    end
    on_intel do
      url "https://github.com/Miragon/pulse/releases/download/v0.28.0/pulse-cli-macos-x64.tar.xz"
      sha256 "1ca3c397abbdca2f750694974b8b33253cc4b861b5bfcc69276f7914d1914b88"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Miragon/pulse/releases/download/v0.28.0/pulse-cli-linux-arm64.tar.xz"
      sha256 "707a9e196cdf44a0598d61968f7cb5d8921518b28d3886775fcbbcd300526c43"
    end
    on_intel do
      url "https://github.com/Miragon/pulse/releases/download/v0.28.0/pulse-cli-linux-x64.tar.xz"
      sha256 "c423afba6ae19f8a9a41ecd4d47722d547ab0954c5020a53b2b652cbca269b01"
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
