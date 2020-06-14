cask 'python3-installer' do
  version '3.8.3'
  sha256 'a563cdb78a7ac5e7879f5a6a8acb363583077bfb1d9fa1e2981b159adfba3cb5'

  url "https://www.python.org/ftp/python/#{version}/python-#{version}-macosx10.9.pkg"
  name 'Python Programming Language'
  homepage 'https://python.org'

  pkg "python-#{version}-macosx10.9.pkg",
    choices: [
      {
        'choiceIdentifier' => 'org.python.Python.PythonProfileChanges-3.7',
        'choiceAttribute'  => 'selected',
        'attributeSetting' => 0
      }
    ]

  uninstall pkgutil: [
    'org.python.Python.PythonFramework-3.8',
    'org.python.Python.PythonDocumentation-3.8',
    'org.python.Python.PythonApplications-3.8',
    'org.python.Python.PythonUnixTools-3.8'
  ]
end
