class PulseCli < Formula
  desc "AI-first CLI for the Camunda 7 REST API (Operaton, CIB seven, Camunda 7)"
  homepage "https://miragon.github.io/pulse/cli/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Miragon/pulse/releases/download/v0.27.1/pulse-cli-macos-arm64.tar.xz"
      sha256 "08075f4281ed157c0e096ee23d2bf230f519ef6882cc6849861357c4e202d980"
    end
    on_intel do
      url "https://github.com/Miragon/pulse/releases/download/v0.27.1/pulse-cli-macos-x64.tar.xz"
      sha256 "08e0525af8a34e0c3f34266bdb11ce64339d39e5f4c014119150c3b70a056bae"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Miragon/pulse/releases/download/v0.27.1/pulse-cli-linux-arm64.tar.xz"
      sha256 "aaa69f47901dd7df80bb8d7ea50f084425cf60c04e3787e9c565f22fdd242e9f"
    end
    on_intel do
      url "https://github.com/Miragon/pulse/releases/download/v0.27.1/pulse-cli-linux-x64.tar.xz"
      sha256 "3f9dfd580376d04f03599c58a78f8a944ec534726f259436c64297471d975329"
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
