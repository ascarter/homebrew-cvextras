cask 'go-installer' do
  version '1.12.2'
  sha256 '9b191761ff2d7327aaccefa8679b5e722a513c14d1f4a6ed74a9429f8d1339a7'

  url "https://dl.google.com/go/go#{version}.darwin-amd64.pkg"
  appcast 'https://golang.org/doc/devel/release.html'
  name 'Go Programming Language'
  homepage 'https://golang.org'

  depends_on macos: '>= :yosemite'

  pkg "go#{version}.darwin-amd64.pkg"
  
  uninstall delete: '/usr/local/go'  
end
