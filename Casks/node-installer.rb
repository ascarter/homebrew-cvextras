cask 'node-installer' do
  version '12.2.0'
  sha256 '80a45502c1a5810f6ae87935b2a9f1612d4cd76cdccddc490dca6d0cbdfa8c3d'

  url "https://nodejs.org/dist/v#{version}/node-v#{version}.pkg"
  appcast 'https://github.com/nodejs/node/releases.atom'
  name 'Node.js'
  homepage 'https://nodejs.org'

  pkg "node-v#{version}.pkg"
  
  uninstall pkgutil: [
    'org.nodejs.npm.pkg',
    'org.nodejs.node.pkg'
  ]
end
