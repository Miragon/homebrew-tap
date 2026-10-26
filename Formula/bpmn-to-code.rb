class BpmnToCode < Formula
  desc "Generates type-safe APIs from BPMN process models and validates them"
  homepage "https://github.com/Miragon/bpmn-to-code"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Miragon/bpmn-to-code/releases/download/v7.0.1/bpmn-to-code-7.0.1-darwin-arm64.zip"
      sha256 "62cb78bd57c0a02b7615cbda47a010b36d097f6db11feaee585565ef29cd0399"
    end
    on_intel do
      url "https://github.com/Miragon/bpmn-to-code/releases/download/v7.0.1/bpmn-to-code-7.0.1-darwin-x64.zip"
      sha256 "7a09c7d581b91e3245f86fbd791e52cda44e835820519a5593264c0937bb5a73"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Miragon/bpmn-to-code/releases/download/v7.0.1/bpmn-to-code-7.0.1-linux-arm64.zip"
      sha256 "b3175a24854e397f743f083e9361ae9d99899e603379c986c06ac85ab0f3b478"
    end
    on_intel do
      url "https://github.com/Miragon/bpmn-to-code/releases/download/v7.0.1/bpmn-to-code-7.0.1-linux-x64.zip"
      sha256 "1019c64fd0f42ca7db9919dbbc686dc1788236ac244ce9897f552fef79722b7f"
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
