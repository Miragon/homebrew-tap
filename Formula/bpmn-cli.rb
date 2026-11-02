class BpmnCli < Formula
  desc "AI-friendly CLI for editing BPMN 2.0 models semantically"
  homepage "https://github.com/Miragon/bpmn-cli"
  url "https://registry.npmjs.org/@miragon/bpmn-cli/-/bpmn-cli-0.10.0.tgz"
  sha256 "de6915933fed580c419ac412f1753a7eab9f1bcb0b4c2ffc67c03b045d219953"
  license "MIT"

  depends_on "node"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink libexec.glob("bin/*")
  end

  test do
    system bin/"bpmn", "--help"
  end
end
