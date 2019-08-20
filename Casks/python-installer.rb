cask 'python-installer' do
  version '3.7.4'
  sha256 '9c7771bc539c619e47aed34074d07d67abb80013610754a561bbc40d70eefe5b'

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
