class PulseCli < Formula
  desc "AI-first CLI for the Camunda 7 REST API (Operaton, CIB seven, Camunda 7)"
  homepage "https://miragon.github.io/pulse/cli/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Miragon/pulse/releases/download/v0.26.0/pulse-cli-macos-arm64.tar.xz"
      sha256 "f5258f15879a647f80f87adf01437129c67c466498313b803c2604d223de0c90"
    end
    on_intel do
      url "https://github.com/Miragon/pulse/releases/download/v0.26.0/pulse-cli-macos-x64.tar.xz"
      sha256 "81e6ba18f5efe5103a32121bb789bdf8bc6df0cb2fcad8f76f88713a152a9a94"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Miragon/pulse/releases/download/v0.26.0/pulse-cli-linux-arm64.tar.xz"
      sha256 "0c69f4d06a8b0208cc45828288beeff23b43744e5f29c4c2e6597c83d976272d"
    end
    on_intel do
      url "https://github.com/Miragon/pulse/releases/download/v0.26.0/pulse-cli-linux-x64.tar.xz"
      sha256 "168834eb99d33e66f499b53b4ff3cceccc07005c2058dee1d86d41d72e15b189"
    end
  end

  def install
    bin.install "pulse-cli"
    bin.install_symlink bin/"pulse-cli" => "pulse"
  end

  test do
    assert_equal version.to_s, shell_output("#{bin}/pulse --version").strip
    assert_equal version.to_s, shell_output("#{bin}/pulse-cli --version").strip
  end
end
