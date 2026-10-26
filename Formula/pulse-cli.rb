class PulseCli < Formula
  desc "AI-first CLI for the Camunda 7 REST API (Operaton, CIB seven, Camunda 7)"
  homepage "https://miragon.github.io/pulse/cli/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Miragon/pulse/releases/download/v0.24.0/pulse-cli-macos-arm64.tar.xz"
      sha256 "71349225735236593a9e014a2427481544f4d08ad47851999ccb34555ff8f936"
    end
    on_intel do
      url "https://github.com/Miragon/pulse/releases/download/v0.24.0/pulse-cli-macos-x64.tar.xz"
      sha256 "14df1999140f9d06c594f674403d8a17d2833c96b7eb39d719adc96f38f6c344"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Miragon/pulse/releases/download/v0.24.0/pulse-cli-linux-arm64.tar.xz"
      sha256 "7dc9f25fff5193e69542450a24e773ac4c9e5e68b0020a7bfdb20b22f42a1447"
    end
    on_intel do
      url "https://github.com/Miragon/pulse/releases/download/v0.24.0/pulse-cli-linux-x64.tar.xz"
      sha256 "fb6cd6555b9cc80b9af6143c2c2eaa63009e8577b501f4e2fe534b1d5039cb61"
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
