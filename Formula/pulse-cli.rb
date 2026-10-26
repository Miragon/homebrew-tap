class PulseCli < Formula
  desc "AI-first CLI for the Camunda 7 REST API (Operaton, CIB seven, Camunda 7)"
  homepage "https://miragon.github.io/pulse/cli/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Miragon/pulse/releases/download/v0.23.0/pulse-cli-macos-arm64.tar.xz"
      sha256 "626fdba4fd47f9b9e7490862be61bc781eae36bdd2fa49cf9019afe5782cde8d"
    end
    on_intel do
      url "https://github.com/Miragon/pulse/releases/download/v0.23.0/pulse-cli-macos-x64.tar.xz"
      sha256 "445e4b0ddd89bf3ef9c553de6968dad1504c0db46e6a1082e0743bd1bc87f953"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Miragon/pulse/releases/download/v0.23.0/pulse-cli-linux-arm64.tar.xz"
      sha256 "9fbc3378b6cbbd118073c6bead8a742948600286f061a5fe0a8371e7c15bf02c"
    end
    on_intel do
      url "https://github.com/Miragon/pulse/releases/download/v0.23.0/pulse-cli-linux-x64.tar.xz"
      sha256 "82b74e954e3063e45cbe05081cbf9dea02de89ac44c83fbceae8fcfbae7671cf"
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
