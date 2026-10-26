class PulseCli < Formula
  desc "AI-first CLI for the Camunda 7 REST API (Operaton, CIB seven, Camunda 7)"
  homepage "https://miragon.github.io/pulse/cli/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Miragon/pulse/releases/download/v0.24.1/pulse-cli-macos-arm64.tar.xz"
      sha256 "a9749ef7bc5bcd3c46f4728d98b2490366786ab059e12fcb390f9be47dfede35"
    end
    on_intel do
      url "https://github.com/Miragon/pulse/releases/download/v0.24.1/pulse-cli-macos-x64.tar.xz"
      sha256 "1d4b867667870a318289cd278e9ae36a5cbb6b95303e1d1e9b4608f16f353bed"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Miragon/pulse/releases/download/v0.24.1/pulse-cli-linux-arm64.tar.xz"
      sha256 "3fac247954295578532ffbd4400a375f5b54e8105e547ef062e71fd533ed2c28"
    end
    on_intel do
      url "https://github.com/Miragon/pulse/releases/download/v0.24.1/pulse-cli-linux-x64.tar.xz"
      sha256 "44f684c4758158b2a16e1b5a0d61d7cb4130efbb7435cc7892201fb747e72c26"
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
