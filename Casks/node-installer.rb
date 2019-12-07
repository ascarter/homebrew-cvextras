cask 'node-installer' do
  version '13.3.0'
  sha256 '8a76651fa9ff4226482e82a2cea37a1e972d4e411e405548b17b25702f8e4a40'

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
