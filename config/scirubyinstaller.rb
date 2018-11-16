---
:gems:
  :name: Gems
  :title: Ruby Gems
  :category: gems
  :list:
    - rake
    -
      :name: bundler
      :version: "1.15.3"
    - rubyzip
    - rb-readline

:msvc_runtime:
  :name: MsvcRuntime
  :title: Microsoft Visual C Runtime
  :category: component
  :regex: '^.*$'
  :url: "http://download.microsoft.com/download/d/d/9/dd9a82d0-52ef-40db-8dab-795376989c03/vcredist_x86.exe"

:dev_kit:
  :name: DevKit
  :title: Development Kit
  :category: component
  :regex: '^.*$'
  :target: 'DevKit'
  :url: "http://s3.amazonaws.com/railsinstaller/Resources/DevKit-mingw64-32-4.7.2-20130224-1151-sfx.exe"

:ruby233:
  :category: component
  :title: Ruby 2.3.3
  :name: Ruby233
  :regex: '^.*$'
  :url: "http://dl.bintray.com/oneclick/rubyinstaller/ruby-2.3.3-i386-mingw32.7z"
  :rename: Ruby2.3.3

:git:
  :category: component
  :title: Git 1.9.4
  :name: Git
  :url: "http://s3.amazonaws.com/railsinstaller/Resources/PortableGit-1.9.4-preview20140929.7z"
  :target: "Git"
  :regex: '^.*$'

:ruby_docs:
  :name: RubyDocs
  :title: Ruby Documentation
  :category: component

:ssl_certificates:
  :name: SSLCertificates
  :title: Certificates
  :category: component
  :url: http://curl.haxx.se/ca
  :file: cacert.pem

:bsdtar:
  :name: BSDTar
  :title: Basic BSDTar
  :category: utility
  :target: bin
  :binary: "basic-bsdtar.exe"
  :regex: '^basic-bsdtar.exe$'
  :url: "http://downloads.sourceforge.net/mingw/basic-bsdtar-2.8.3-1-mingw32-bin.zip"

:sevenzip:
  :name: SevenZip
  :title: 7Zip
  :category: utility
  :target: bin
  :binary: "7za.exe"
  :regex: '^7za\.exe$'
  :url: "http://downloads.sourceforge.net/project/sevenzip/7-Zip/9.20/7za920.zip"
