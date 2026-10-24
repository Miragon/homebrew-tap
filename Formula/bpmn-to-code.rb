class BpmnToCode < Formula
  desc "Generates type-safe APIs from BPMN process models and validates them"
  homepage "https://github.com/Miragon/bpmn-to-code"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Miragon/bpmn-to-code/releases/download/v7.0.0/bpmn-to-code-7.0.0-darwin-arm64.zip"
      sha256 "5416ca50c820990f6faecd701ce51a94f5b5c61d5a9888b81ee31f4f44785d75"
    end
    on_intel do
      url "https://github.com/Miragon/bpmn-to-code/releases/download/v7.0.0/bpmn-to-code-7.0.0-darwin-x64.zip"
      sha256 "509954e81c6dc0c42ef5daf8874842ed20494c23406ee619244154b9d605fd94"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Miragon/bpmn-to-code/releases/download/v7.0.0/bpmn-to-code-7.0.0-linux-arm64.zip"
      sha256 "a9d48777e65d3b491d2aab098a91ea103600f71738438973ce0f3f3ad0d9fb1b"
    end
    on_intel do
      url "https://github.com/Miragon/bpmn-to-code/releases/download/v7.0.0/bpmn-to-code-7.0.0-linux-x64.zip"
      sha256 "1e67846b8d943f52173e4f01fb474cfbc6724bd838fcd88b57b87ee2b3da94ed"
    end
  end

  def install
    libexec.install Dir["*"]
    bin.write_exec_script libexec/"bin/bpmn-to-code"
  end

  test do
    assert_equal "bpmn-to-code version #{version}", shell_output("#{bin}/bpmn-to-code --version").strip
  end
end
