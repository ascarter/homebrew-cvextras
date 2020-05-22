cask 'node-installer' do
  version '14.3.0'
  sha256 'bcb0574454a1646cce32425b927dd0b032c7e8a8c089d1ce1db9b44546c3aa6f'

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
