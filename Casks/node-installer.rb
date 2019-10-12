cask 'node-installer' do
  version '12.12.0'
  sha256 'e6d1988c241fef87d9672742a924c94ecbcefa2fe622c937791853eaf652ddaa'

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
