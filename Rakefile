task :default do
  printf "\nSciRubyInstaller Rake Tasks:
         {bootstrap, build, package}
         See README.md for more details.\n\n"
end

task :require_scirubyinstaller do
  require "scirubyinstaller"
end

desc "Bootstrap SciRubyInstaller development environment (gems)"

task :bootstrap do
  require "rubygems/dependency_installer"

  gems = File.read(File.join(ProjectRoot, ".gems")).gsub(" -v", ' ').split("\n")

  gems.each do |gem|
    # puts("Ensuring", gem,  "is installed...\n")
    name, version, options = gem.split(/\s+/)

    installer = Gem::DependencyInstaller.new(
      { :generate_rdoc => false, :generate_ri => false }
    )

    version ? installer.install(name, version) : installer.install(name)
  end

  printf "Bootstrapped.\nDo not forget to download and install Inno Setup, see README.md for more information.\n"
end

desc "Download and build all components and dependencies into stage/."

task :build => [ :require_scirubyinstaller ] do
  SciRubyInstaller.build!
end

desc "Package all components into a single executable installer into pkg/."
task :package => [ :require_scirubyinstaller ] do
  SciRubyInstaller.package!
end
