class PulseCli < Formula
  desc "AI-first CLI for the Camunda 7 REST API (Operaton, CIB seven, Camunda 7)"
  homepage "https://miragon.github.io/pulse/cli/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Miragon/pulse/releases/download/v0.34.0/pulse-cli-macos-arm64.tar.xz"
      sha256 "aecfd386e0a656f1bb0b417719644517480b1640bdd920ee028a61479550dd43"
    end
    on_intel do
      url "https://github.com/Miragon/pulse/releases/download/v0.34.0/pulse-cli-macos-x64.tar.xz"
      sha256 "435057d917131510fcb21e06e590b40032d8f4359be952f863d88dd6f2a8ee3b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Miragon/pulse/releases/download/v0.34.0/pulse-cli-linux-arm64.tar.xz"
      sha256 "6c0668da6ddc72680c36abc6de4946c2bfc64cc6137065d531ff0d580fc5178b"
    end
    on_intel do
      url "https://github.com/Miragon/pulse/releases/download/v0.34.0/pulse-cli-linux-x64.tar.xz"
      sha256 "be8ba46bf7efa398ba7ee24dd2ee58c37c7be53e035167668cdeeffa53e87963"
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
