cask 'go-installer' do
  version '1.12.9'
  sha256 '4f5478e6d985f4f68099e03f4485149efa697cf81610e514974291a29ee7e21b'

  url "https://dl.google.com/go/go#{version}.darwin-amd64.pkg"
  appcast 'https://github.com/golang/go/releases.atom'
  name 'Go Programming Language'
  homepage 'https://golang.org'

  depends_on macos: '>= :yosemite'

  pkg "go#{version}.darwin-amd64.pkg"

  uninstall pkgutil: 'com.googlecode.go'
end
