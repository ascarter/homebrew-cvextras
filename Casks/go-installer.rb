cask 'go-installer' do
  version '1.13'
  sha256 '7dc05b582ed8730b7f188af55ca68500dd1eaa267f0f84e46751858360d2b665'

  url "https://dl.google.com/go/go#{version}.darwin-amd64.pkg"
  appcast 'https://github.com/golang/go/releases.atom'
  name 'Go Programming Language'
  homepage 'https://golang.org'

  depends_on macos: '>= :yosemite'

  pkg "go#{version}.darwin-amd64.pkg"

  uninstall pkgutil: 'com.googlecode.go'
end
