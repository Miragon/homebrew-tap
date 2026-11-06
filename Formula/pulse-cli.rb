class PulseCli < Formula
  desc "AI-first CLI for the Camunda 7 REST API (Operaton, CIB seven, Camunda 7)"
  homepage "https://miragon.github.io/pulse/cli/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Miragon/pulse/releases/download/v0.27.0/pulse-cli-macos-arm64.tar.xz"
      sha256 "47adbaf6d088b584a5b86eaf6ffcacb4d5220735c97db5e53ba6da211a0bbf10"
    end
    on_intel do
      url "https://github.com/Miragon/pulse/releases/download/v0.27.0/pulse-cli-macos-x64.tar.xz"
      sha256 "884900b74045317bb1d07a29d2db73540821b32213753bba8ca101a46370aa68"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Miragon/pulse/releases/download/v0.27.0/pulse-cli-linux-arm64.tar.xz"
      sha256 "986c49043cbe5a3c174d35fdca81851bde253801e3264b987c990df2b3e8d1e3"
    end
    on_intel do
      url "https://github.com/Miragon/pulse/releases/download/v0.27.0/pulse-cli-linux-x64.tar.xz"
      sha256 "971b9a5feeaffa7beae536cc1c870ad8291bf060cdc37fc841bac6edb16e5e3f"
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
