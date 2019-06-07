cask 'python-installer' do
  version '3.7.3'
  sha256 'ecca0dd496cf06a0c0bc739e1a2fcec68c86eb79580fe4524c49c6f22246dd3d'

  url "https://www.python.org/ftp/python/#{version}/python-#{version}-macosx10.9.pkg"
  name 'Python Programming Language'
  homepage 'https://python.org'

  depends_on macos: '>= :mavericks'

  pkg "python-#{version}-macosx10.9.pkg",
    choices: [
      {
        'choiceIdentifier' => 'org.python.Python.PythonProfileChanges-3.7',
        'choiceAttribute'  => 'selected',
        'attributeSetting' => 0
      }
    ]

  uninstall pkgutil: [
    'org.python.Python.PythonFramework-3.7',
    'org.python.Python.PythonDocumentation-3.7',
    'org.python.Python.PythonApplications-3.7',
    'org.python.Python.PythonUnixTools-3.7'
  ]
end
