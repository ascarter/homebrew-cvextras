cask 'node-installer' do
  version '13.9.0'
  sha256 '72d13b279f5447b3e6dfac95a519865c0ec742d78b96c55be73575a7e1a22da6'

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
