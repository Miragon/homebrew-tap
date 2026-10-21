class BpmnToCode < Formula
  desc "Generates type-safe APIs from BPMN process models and validates them"
  homepage "https://github.com/Miragon/bpmn-to-code"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Miragon/bpmn-to-code/releases/download/v6.6.0/bpmn-to-code-6.6.0-darwin-arm64.zip"
      sha256 "4dcf3e6fc79d845a70af9d179e4fb8ca95419629626f5cb62547100f2d1e5073"
    end
    on_intel do
      url "https://github.com/Miragon/bpmn-to-code/releases/download/v6.6.0/bpmn-to-code-6.6.0-darwin-x64.zip"
      sha256 "dad5e8e951910983e924fb50086d65f7a8afaf2bc7d54cd5089a580ba903f1ef"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Miragon/bpmn-to-code/releases/download/v6.6.0/bpmn-to-code-6.6.0-linux-arm64.zip"
      sha256 "241171ab5699f7d43026a6784179f4092f6f0181a8893d76646b8532006dfd91"
    end
    on_intel do
      url "https://github.com/Miragon/bpmn-to-code/releases/download/v6.6.0/bpmn-to-code-6.6.0-linux-x64.zip"
      sha256 "e1ddbe81126f0fb0e8ff296f252263cc28fabfdbce06c6678f4770fe504633ca"
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
