cask 'go-installer' do
  version '1.12.8'
  sha256 '6e879a183b904273c3e3c7e4935ddecb1f7d298461648852529496499d861e41'

  url "https://dl.google.com/go/go#{version}.darwin-amd64.pkg"
  appcast 'https://github.com/golang/go/releases.atom'
  name 'Go Programming Language'
  homepage 'https://golang.org'

  depends_on macos: '>= :yosemite'

  pkg "go#{version}.darwin-amd64.pkg"
  
  uninstall pkgutil: 'com.googlecode.go'
end
