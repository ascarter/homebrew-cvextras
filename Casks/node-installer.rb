cask 'node-installer' do
  version '11.13.0'
  sha256 '255ef8b33f622bf2377cd3acc4197f232cd120b60143369cb6ff88dc939d0419'

  url "https://nodejs.org/dist/v#{version}/node-v#{version}.pkg"
  appcast 'https://github.com/nodejs/node/blob/master/doc/changelogs/CHANGELOG_V11.md'
  name 'Node.js'
  homepage 'https://nodejs.org'

  pkg "node-v#{version}.pkg"
  
  uninstall pkgutil: [
    'org.nodejs.npm.pkg',
    'org.nodejs.node.pkg'
  ]
end
