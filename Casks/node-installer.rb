cask 'node-installer' do
  version '13.12.0'
  sha256 'd78bdd6bc5f3727189cb733e035c0e07b649248b065bc677aedfc476f0e8307d'

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
