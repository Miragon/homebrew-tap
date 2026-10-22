class Operate < Formula
  desc "AI-first CLI for the Camunda 7 REST API (Operaton, CIB seven, Camunda 7)"
  homepage "https://github.com/Miragon/operate"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Miragon/operate/releases/download/v0.10.0/operate-macos-arm64.tar.xz"
      sha256 "50138707b7e418ae7705546b763dbb477643b706c72370f5ab057b12f4ebd53e"
    end
    on_intel do
      url "https://github.com/Miragon/operate/releases/download/v0.10.0/operate-macos-x64.tar.xz"
      sha256 "ee76f9a8d5e8275146ca6e02910c2465b67557a6065d2dbe3449e3dbc17474e1"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Miragon/operate/releases/download/v0.10.0/operate-linux-arm64.tar.xz"
      sha256 "fe825e188ac715076004462ee7e2732544fa2b421e38e89dcff247d89ac2c53f"
    end
    on_intel do
      url "https://github.com/Miragon/operate/releases/download/v0.10.0/operate-linux-x64.tar.xz"
      sha256 "fcac909961531d2a325092e5bc202d7b07796620114025db2bc3d509f82b567e"
    end
  end

  def install
    bin.install "operate"
    generate_completions_from_executable(bin/"operate", "completion")
  end

  test do
    assert_equal version.to_s, shell_output("#{bin}/operate --version").strip
  end
end
