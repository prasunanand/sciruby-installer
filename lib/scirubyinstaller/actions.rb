module SciRubyInstaller

  def self.build!

    components = [
      BSDTar, SevenZip, DevKit, Git, Ruby233,
      PostgresServer, Sqlite3, Sqlite3Dll
    ]

    components.each do |package|
      section  package.title
      download package.url
      extract  package
    end

    stage_sqlite

    link_devkit_with_ruby

    stage_git

    stage_postgresql

    stage_todo_application

    stage_gems

    fix_batch_files

    stage_setup_scripts

    stage_msvc_runtime
  end

  #
  # package()
  #
  # Packages a binary installer release version together as a
  # self contained installer using Inno Setup scripting.
  #
  def self.package!

    unless %x{iscc}.scan("Inno Setup 5")
      printf "ERROR: Inno Setup is required in order to package SciRubyInstaller.\n"
      printf "  http://www.jrsoftware.org/isdl.php#qsp\n"
      printf "Please see README.md for full SciRubyInstaller instructions.\n"
      exit 1
    end

    scirubyinstaller_version = File.read(File.join(SciRubyInstaller::Root, "VERSION.txt")).chomp

    printf "\nPackaging... this *will* take a while...\n"

    iscc "\"#{File.join(SciRubyInstaller::Root, "resources", "scirubyinstaller", "scirubyinstaller.iss")}\"",
          "/dInstallerVersion=#{scirubyinstaller_version}",
          "/dStagePath=\"#{SciRubyInstaller::Stage}\"",
          "/dRubyPath=\"#{SciRubyInstaller::Ruby233.rename}\"",
          "/dResourcesPath=\"#{File.join(SciRubyInstaller::Root, "resources")}\"",
          "/o\"#{SciRubyInstaller::PackageDir}\"",
          "/fscirubyinstaller-#{scirubyinstaller_version}"

  end

end