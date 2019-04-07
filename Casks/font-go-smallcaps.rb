cask 'font-go-smallcaps' do
  version :latest
  sha256 :no_check

  url 'https://go.googlesource.com/image/+archive/master/font/gofont/ttfs.tar.gz'
  name 'Go Smallcaps'
  homepage 'https://go.googlesource.com/image/+/master/font/gofont/ttfs/README'

  font 'Go-Smallcaps-Italic.ttf'
  font 'Go-Smallcaps.ttf'
end
