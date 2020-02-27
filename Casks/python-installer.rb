cask 'python-installer' do
  version '3.8.2'
  sha256 '7254ed07ceb8b02b35297b555abd660db89519407b43abb05d5ea57570d4182e'

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
    'org.python.Python.PythonFramework-3.8',
    'org.python.Python.PythonDocumentation-3.8',
    'org.python.Python.PythonApplications-3.8',
    'org.python.Python.PythonUnixTools-3.8'
  ]
end
