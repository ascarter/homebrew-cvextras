cask 'go-installer' do
  version '1.14.5'
  sha256 'a0c8ca21a101e183a59ee553dfbeda6beb798169bbe065ff854cce9e1a9fffb7'

  url "https://dl.google.com/go/go#{version}.darwin-amd64.pkg"
  appcast 'https://github.com/golang/go/releases.atom'
  name 'Go Programming Language'
  homepage 'https://golang.org'

  pkg "go#{version}.darwin-amd64.pkg"

  uninstall pkgutil: 'com.googlecode.go'
end
