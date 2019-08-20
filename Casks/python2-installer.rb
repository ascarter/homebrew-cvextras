cask 'python2-installer' do
    version '2.7.16'
    sha256 'c4354a53f4a85c28470d191cc44292f01745984040bc0e8e311894776d0b906c'

    url "https://www.python.org/ftp/python/#{version}/python-#{version}-macosx10.9.pkg"
    name 'Python Programming Language'
    homepage 'https://python.org'

    depends_on macos: '>= :mavericks'

    pkg "python-#{version}-macosx10.9.pkg",
      choices: [
        {
          'choiceIdentifier' => 'org.python.Python.PythonProfileChanges-2.7',
          'choiceAttribute'  => 'selected',
          'attributeSetting' => 0
        }
      ]

    uninstall pkgutil: [
      'org.python.Python.PythonFramework-2.7',
      'org.python.Python.PythonDocumentation-2.7',
      'org.python.Python.PythonApplications-2.7',
      'org.python.Python.PythonUnixTools-2.7'
    ]
  end
