cask 'go-installer' do
  version '1.12.3'
  sha256 '325b7eba71bf705e12bea3dc8a5cd3995b788cba3b6a97c93157fdfac990058f'

  url "https://dl.google.com/go/go#{version}.darwin-amd64.pkg"
  appcast 'https://github.com/golang/go/releases.atom'
  name 'Go Programming Language'
  homepage 'https://golang.org'

  depends_on macos: '>= :yosemite'

  pkg "go#{version}.darwin-amd64.pkg"
  
  uninstall pkgutil: 'com.googlecode.go'
end
