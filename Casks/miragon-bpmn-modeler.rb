cask "miragon-bpmn-modeler" do
  version "0.9.2"
  sha256 "90fc9fe0c8a7322d8c06d007e58f82f1478986a1ec306451e69e13065e460083"

  url "https://github.com/Miragon/bpmn-modeler/releases/download/standalone-v#{version}/Miragon.BPMN.Modeler-#{version}-arm64.dmg"
  name "Miragon BPMN Modeler"
  desc "Standalone BPMN/DMN process modeler"
  homepage "https://github.com/Miragon/bpmn-modeler"

  app "Miragon BPMN Modeler.app"
end
