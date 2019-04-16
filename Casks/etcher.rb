cask 'etcher' do
  version '1.5.24'
  sha256 'f4c1b167d28eabe746437eff6962071cffea7cfb45ef103ddee807c2d49ca964'

  url "https://github.com/balena-io/etcher/releases/download/v#{version}/balenaEtcher-#{version}.dmg"
  appcast 'https://github.com/balena-io/etcher/releases.atom'
  name 'Etcher'
  homepage 'https://www.balena.io/etcher/'

  app 'balenaEtcher.app'
end
