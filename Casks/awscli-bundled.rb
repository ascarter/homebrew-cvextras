cask 'awscli-bundled' do
  version :latest
  sha256 :no_check

  url 'https://s3.amazonaws.com/aws-cli/awscli-bundle.zip'
  name 'AWS CLI (Bundled)'
  homepage 'https://aws.amazon.com/cli/'

  installer script: {
                      executable: "#{staged_path}/awscli-bundle/install",
                      args: ['-i', "#{caskroom_path}/lib", '-b', "#{HOMEBREW_PREFIX}/bin/aws"]
                    }
  uninstall delete: ["#{caskroom_path}/lib", "#{HOMEBREW_PREFIX}/bin/aws"]
end
