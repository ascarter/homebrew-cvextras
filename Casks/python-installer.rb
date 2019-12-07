cask 'python-installer' do
  version '3.8.0'
  sha256 '30961fe060da9dc5afdc4e789a57fe9bcc0d20244474e9f095d7bfc89d2e1869'

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
