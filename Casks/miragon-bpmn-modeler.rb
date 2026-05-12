cask "miragon-bpmn-modeler" do
  version "0.0.3"
  sha256 "5bad7aa7a76a477bc109c47a838a06ea9f0276687ddee4f8941d9ed08e6b721b"

  url "https://github.com/Miragon/bpmn-modeler/releases/download/standalone-v#{version}/Miragon.BPMN.Modeler-#{version}-arm64.dmg"
  name "Miragon BPMN Modeler"
  desc "Standalone BPMN/DMN process modeler"
  homepage "https://github.com/Miragon/bpmn-modeler"

  app "Miragon BPMN Modeler.app"
end
