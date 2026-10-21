class BpmnCli < Formula
  desc "AI-friendly CLI for editing BPMN 2.0 models semantically"
  homepage "https://github.com/Miragon/bpmn-cli"
  url "https://registry.npmjs.org/@miragon/bpmn-cli/-/bpmn-cli-0.8.0.tgz"
  sha256 "026384e3aba485e35315105b712216fa96e863d57bcb052da644039c94d8be04"
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
