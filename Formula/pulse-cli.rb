class PulseCli < Formula
  desc "AI-first CLI for the Camunda 7 REST API (Operaton, CIB seven, Camunda 7)"
  homepage "https://miragon.github.io/pulse/cli/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Miragon/pulse/releases/download/v0.24.2/pulse-cli-macos-arm64.tar.xz"
      sha256 "aa141c6d9ced918eba3722300b3202df6351f401ded293d6833b973d5f6d7922"
    end
    on_intel do
      url "https://github.com/Miragon/pulse/releases/download/v0.24.2/pulse-cli-macos-x64.tar.xz"
      sha256 "16444c5af4d86b74712891b4a05c3c06587bb6bba3c9db4ec95c001e8ac1063d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Miragon/pulse/releases/download/v0.24.2/pulse-cli-linux-arm64.tar.xz"
      sha256 "abebf8c28807ed27765aba68d30c25b5c6ce98b3f4d2a222e6b73a7326ed82e7"
    end
    on_intel do
      url "https://github.com/Miragon/pulse/releases/download/v0.24.2/pulse-cli-linux-x64.tar.xz"
      sha256 "ae7f98a4f4f8488e3c7a76ad2e360cd992e615ec397c4563295bb6e207d7d373"
    end
  end

  def install
    bin.install "pulse-cli"
    # operate, the command up to 0.10.0, until the first release after 2027-01-31: pulse-cli
    # recognizes the name and warns
    bin.install_symlink "pulse-cli" => "operate"
    generate_completions_from_executable(bin/"pulse-cli", "completion")
  end

  test do
    assert_equal version.to_s, shell_output("#{bin}/pulse-cli --version").strip
    assert_equal version.to_s, shell_output("#{bin}/operate --version").strip
    assert_match "first release after 2027-01-31", shell_output("#{bin}/operate --version 2>&1")
  end
end
