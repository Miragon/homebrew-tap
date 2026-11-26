class PulseCli < Formula
  desc "AI-first CLI for the Camunda 7 REST API (Operaton, CIB seven, Camunda 7)"
  homepage "https://miragon.github.io/pulse/cli/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Miragon/pulse/releases/download/v0.33.0/pulse-cli-macos-arm64.tar.xz"
      sha256 "0faf108a4ee9b319b22c0768acd61c786bf54ea45e9be1816eddeeda5b81d4f0"
    end
    on_intel do
      url "https://github.com/Miragon/pulse/releases/download/v0.33.0/pulse-cli-macos-x64.tar.xz"
      sha256 "d04b2e4350cb91cf6540bd457987141b930b4db039bff698cb18ddeeaa42b3a8"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Miragon/pulse/releases/download/v0.33.0/pulse-cli-linux-arm64.tar.xz"
      sha256 "89bac7ba1b834baca67fa82576422154daa8cc0d7250826d6d5cf735f7fce8b9"
    end
    on_intel do
      url "https://github.com/Miragon/pulse/releases/download/v0.33.0/pulse-cli-linux-x64.tar.xz"
      sha256 "ead54d5ccb11044b27df25e381deac4e834048cdefe12f2e973982ea3fabe293"
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
