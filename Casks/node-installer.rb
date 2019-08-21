cask 'node-installer' do
  version '12.9.0'
  sha256 '7a18632a187137f21f88dbc0ae85c8a34d20fccb4b7c26be665fdc56a929c3fc'

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
