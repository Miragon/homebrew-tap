class BpmnToCode < Formula
  desc "Generates type-safe APIs from BPMN process models and validates them"
  homepage "https://github.com/Miragon/bpmn-to-code"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Miragon/bpmn-to-code/releases/download/v6.5.0/bpmn-to-code-6.5.0-darwin-arm64.zip"
      sha256 "61aff692b9a0ef9b82eda232dbb94d5d3e2f99b7263b89cce19839f24bdf2cee"
    end
    on_intel do
      url "https://github.com/Miragon/bpmn-to-code/releases/download/v6.5.0/bpmn-to-code-6.5.0-darwin-x64.zip"
      sha256 "046f36b31a36a2b61f30a017c1296906e1361c0704da4aafbf82224d2c715b39"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Miragon/bpmn-to-code/releases/download/v6.5.0/bpmn-to-code-6.5.0-linux-arm64.zip"
      sha256 "a6e854412459246116d5d746596b93d0fcb99e600545116b3e183b1e6e8f7b1d"
    end
    on_intel do
      url "https://github.com/Miragon/bpmn-to-code/releases/download/v6.5.0/bpmn-to-code-6.5.0-linux-x64.zip"
      sha256 "d3b4d56cb307c286e95cb430b1cc11e6411421c3ac23f8f6a3fc2d25ff0e01e2"
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
