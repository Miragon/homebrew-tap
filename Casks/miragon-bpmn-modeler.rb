cask "miragon-bpmn-modeler" do
  version "0.0.0"
  sha256 "0000000000000000000000000000000000000000000000000000000000000000"

  url "https://github.com/Miragon/bpmn-modeler/releases/download/standalone-v#{version}/miragon-bpmn-modeler-#{version}-arm64.dmg"
  name "Miragon BPMN Modeler"
  desc "Standalone BPMN/DMN process modeler"
  homepage "https://github.com/Miragon/bpmn-modeler"

  app "Miragon BPMN Modeler.app"
end
