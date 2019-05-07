cask 'go-installer' do
  version '1.12.5'
  sha256 '2501498ad111f33a863ebd80eda0a34d2f6d62bb59fa20d523935e5c1732614f'

  url "https://dl.google.com/go/go#{version}.darwin-amd64.pkg"
  appcast 'https://github.com/golang/go/releases.atom'
  name 'Go Programming Language'
  homepage 'https://golang.org'

  depends_on macos: '>= :yosemite'

  pkg "go#{version}.darwin-amd64.pkg"
  
  uninstall pkgutil: 'com.googlecode.go'
end
