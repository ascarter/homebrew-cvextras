cask 'go-installer' do
  version '1.12.5'
  sha256 '2aa5f088cbb332e73fc3def546800616b38d3bfe6b8713b8a6404060f22503e8'

  url "https://dl.google.com/go/go#{version}.darwin-amd64.pkg"
  appcast 'https://github.com/golang/go/releases.atom'
  name 'Go Programming Language'
  homepage 'https://golang.org'

  depends_on macos: '>= :yosemite'

  pkg "go#{version}.darwin-amd64.pkg"
  
  uninstall pkgutil: 'com.googlecode.go'
end
