class PulseCli < Formula
  desc "AI-first CLI for the Camunda 7 REST API (Operaton, CIB seven, Camunda 7)"
  homepage "https://miragon.github.io/pulse/cli/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Miragon/pulse/releases/download/v0.32.0/pulse-cli-macos-arm64.tar.xz"
      sha256 "cc3b567bbedb9ac753c213f566972341ba9a1f57dc2cb15987988b9e269a99ca"
    end
    on_intel do
      url "https://github.com/Miragon/pulse/releases/download/v0.32.0/pulse-cli-macos-x64.tar.xz"
      sha256 "7b248411f8d2429e7f339414d41f5b9d34facfd7d15cd237d0b8cacd60d5da90"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Miragon/pulse/releases/download/v0.32.0/pulse-cli-linux-arm64.tar.xz"
      sha256 "33c470bb58c9206d0dbd32469b05a9a4433838fc25aae51598b63781861af459"
    end
    on_intel do
      url "https://github.com/Miragon/pulse/releases/download/v0.32.0/pulse-cli-linux-x64.tar.xz"
      sha256 "cc41225fab6d7a2eed59ab550f376d3637245268c9ae6a07e73a9ea4c824ca49"
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
