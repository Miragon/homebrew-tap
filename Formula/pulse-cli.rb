class PulseCli < Formula
  desc "AI-first CLI for the Camunda 7 REST API (Operaton, CIB seven, Camunda 7)"
  homepage "https://miragon.github.io/pulse/cli/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Miragon/pulse/releases/download/v0.25.0/pulse-cli-macos-arm64.tar.xz"
      sha256 "80a0cd30899821da7cec51e6e1716a7a0de0000af9e70e35b44535db9cb9f252"
    end
    on_intel do
      url "https://github.com/Miragon/pulse/releases/download/v0.25.0/pulse-cli-macos-x64.tar.xz"
      sha256 "e4c44826d1849082413642761b8a48841a394e9d4f49763ed9e9c4dec13a1dfd"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Miragon/pulse/releases/download/v0.25.0/pulse-cli-linux-arm64.tar.xz"
      sha256 "b1cd6d65bf1901bb775a4dc5960ff69c981856148375d435487a7ae7b81b819b"
    end
    on_intel do
      url "https://github.com/Miragon/pulse/releases/download/v0.25.0/pulse-cli-linux-x64.tar.xz"
      sha256 "a380e2ed1811490f26424dc0310d05b17cc90a1b7b113782f4b084e023550b40"
    end
  end

  def install
    bin.install "pulse-cli"
  end

  test do
    assert_equal version.to_s, shell_output("#{bin}/pulse-cli --version").strip
  end
end
