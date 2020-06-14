cask 'node-installer' do
  version '14.4.0'
  sha256 'c2f0ed7cbf63b52cc5be5bb01e9eca71baf5b19c9c52edfad326c3e1c78677b1'

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
