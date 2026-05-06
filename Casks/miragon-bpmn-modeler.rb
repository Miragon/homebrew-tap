cask "miragon-bpmn-modeler" do
  version "0.0.1"
  sha256 "e61db68639f42c4ba46ad0c200b0f222352b4d562473ae4846806ae73fa3602a"

  url "https://github.com/Miragon/bpmn-modeler/releases/download/standalone-v#{version}/Miragon.BPMN.Modeler-#{version}-arm64.dmg"
  name "Miragon BPMN Modeler"
  desc "Standalone BPMN/DMN process modeler"
  homepage "https://github.com/Miragon/bpmn-modeler"

  app "Miragon BPMN Modeler.app"
end
