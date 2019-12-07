cask 'go-installer' do
  version '1.13.5'
  sha256 'b973bc34f146d20a168753cbc151979504bc76ddafdeae86016235911902b481'

  url "https://dl.google.com/go/go#{version}.darwin-amd64.pkg"
  appcast 'https://github.com/golang/go/releases.atom'
  name 'Go Programming Language'
  homepage 'https://golang.org'

  depends_on macos: '>= :yosemite'

  pkg "go#{version}.darwin-amd64.pkg"

  uninstall pkgutil: 'com.googlecode.go'
end
