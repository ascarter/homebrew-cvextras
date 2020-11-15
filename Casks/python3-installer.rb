cask 'python3-installer' do
  version '3.9.0'
  sha256 'dadee1d10c1a8ed58bb64ec7409a48c9fe38599791eaaea29303ee59fb95dfeb'

  url "https://www.python.org/ftp/python/#{version}/python-#{version}-macosx10.9.pkg"
  name 'Python Programming Language'
  homepage 'https://python.org'

  pkg "python-#{version}-macosx10.9.pkg",
    choices: [
      {
        'choiceIdentifier' => 'org.python.Python.PythonProfileChanges-3.9',
        'choiceAttribute'  => 'selected',
        'attributeSetting' => 0
      }
    ]

  uninstall pkgutil: [
    'org.python.Python.PythonFramework-3.9',
    'org.python.Python.PythonDocumentation-3.9',
    'org.python.Python.PythonApplications-3.9',
    'org.python.Python.PythonUnixTools-3.9'
  ]
end
