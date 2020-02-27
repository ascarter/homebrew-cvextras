cask 'go-installer' do
  version '1.14'
  sha256 '8405d748b7b56720b004c18087576a24b7eab057725c03c8160b949d239c6ee4'

  url "https://dl.google.com/go/go#{version}.darwin-amd64.pkg"
  appcast 'https://github.com/golang/go/releases.atom'
  name 'Go Programming Language'
  homepage 'https://golang.org'

  depends_on macos: '>= :yosemite'

  pkg "go#{version}.darwin-amd64.pkg"

  uninstall pkgutil: 'com.googlecode.go'
end
