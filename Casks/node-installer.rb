cask 'node-installer' do
  version '12.8.0'
  sha256 '4d67ebf2026da69bf7f663a4776640853e478be456173a91910c028b656d0301'

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
