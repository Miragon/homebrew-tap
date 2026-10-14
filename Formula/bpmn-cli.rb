class BpmnCli < Formula
  desc "AI-friendly CLI for editing BPMN 2.0 models semantically"
  homepage "https://github.com/Miragon/bpmn-cli"
  url "https://registry.npmjs.org/@miragon/bpmn-cli/-/bpmn-cli-0.6.0.tgz"
  sha256 "8ced2e7b4fc54e887699e894c9554c4d40fdc205ef2b16dd7221fa3ae0f7229d"
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
