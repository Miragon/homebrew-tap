class Operate < Formula
  desc "AI-first CLI for the Camunda 7 REST API (Operaton, CIB seven, Camunda 7)"
  homepage "https://github.com/Miragon/operate"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Miragon/operate/releases/download/v0.9.0/operate-macos-arm64.tar.xz"
      sha256 "c315aa0b24f50c98ff68dcfed5f45cd68f9a6967f18b8fa341f59d430c052810"
    end
    on_intel do
      url "https://github.com/Miragon/operate/releases/download/v0.9.0/operate-macos-x64.tar.xz"
      sha256 "ce22bbef908e05015b1084d5672431837846a800fa2d489b6c687f642fa5ee3d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Miragon/operate/releases/download/v0.9.0/operate-linux-arm64.tar.xz"
      sha256 "e1fe3ef2effe406beac479bbf58265af06cc276a503f1105715828f633ab1439"
    end
    on_intel do
      url "https://github.com/Miragon/operate/releases/download/v0.9.0/operate-linux-x64.tar.xz"
      sha256 "1802663c7674c743ce0a8967367f01c87455008f6e3ab1425508cd2178083245"
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
