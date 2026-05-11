cask "miragon-bpmn-modeler" do
  version "0.0.2"
  sha256 "06ab8142a4e5d721aea7dcd26381e4524128db6cd98adec262f71e1fe0b08150"

  url "https://github.com/Miragon/bpmn-modeler/releases/download/standalone-v#{version}/Miragon.BPMN.Modeler-#{version}-arm64.dmg"
  name "Miragon BPMN Modeler"
  desc "Standalone BPMN/DMN process modeler"
  homepage "https://github.com/Miragon/bpmn-modeler"

  app "Miragon BPMN Modeler.app"
end
