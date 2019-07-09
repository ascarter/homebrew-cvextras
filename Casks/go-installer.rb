cask 'go-installer' do
  version '1.12.7'
  sha256 '9108ce8b3d47eb2edf10bb721e47ec10d0733c3a13a0a0bb86c67ca7178b0699'

  url "https://dl.google.com/go/go#{version}.darwin-amd64.pkg"
  appcast 'https://github.com/golang/go/releases.atom'
  name 'Go Programming Language'
  homepage 'https://golang.org'

  depends_on macos: '>= :yosemite'

  pkg "go#{version}.darwin-amd64.pkg"
  
  uninstall pkgutil: 'com.googlecode.go'
end
