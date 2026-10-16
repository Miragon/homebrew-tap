class BpmnCli < Formula
  desc "AI-friendly CLI for editing BPMN 2.0 models semantically"
  homepage "https://github.com/Miragon/bpmn-cli"
  url "https://registry.npmjs.org/@miragon/bpmn-cli/-/bpmn-cli-0.7.0.tgz"
  sha256 "121e733a9cef9ee1b3297bad34716a07d68168d5f7b7f6171eb4b6d30f9f3ef3"
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
