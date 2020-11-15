cask 'node-installer' do
  version '14.15.0'
  sha256 'e2eb6497d090926a6c4cce972aefe9a91beb53c495d6e38d91de850ae0c22b61'

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
