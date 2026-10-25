class PulseCli < Formula
  desc "AI-first CLI for the Camunda 7 REST API (Operaton, CIB seven, Camunda 7)"
  homepage "https://miragon.github.io/pulse/cli/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Miragon/pulse/releases/download/v0.22.0/pulse-cli-macos-arm64.tar.xz"
      sha256 "d1720bf8d051f83fec6e6f00321e00c13646319d4a2f2f8f7fb4c3b4694f9ddc"
    end
    on_intel do
      url "https://github.com/Miragon/pulse/releases/download/v0.22.0/pulse-cli-macos-x64.tar.xz"
      sha256 "b5d0eac383d5ecd98ea0da95e8890d1ccc61f8a7fa88fe2728ea934932815a1c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Miragon/pulse/releases/download/v0.22.0/pulse-cli-linux-arm64.tar.xz"
      sha256 "7476611fc77bbdbb1c05c46d011a56528ac3373d467af5a963de591ea833cbaa"
    end
    on_intel do
      url "https://github.com/Miragon/pulse/releases/download/v0.22.0/pulse-cli-linux-x64.tar.xz"
      sha256 "5d7674b746acb4f072428db5ba8ccf51df530bbae56fc0707ccc841bf7930664"
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
