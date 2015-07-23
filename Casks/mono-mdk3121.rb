cask :v1 => 'mono-mdk3121' do
  version '3.12.1'
  sha256 '98abc2854e9d0dfafd16c2b9dd27b82eda9e28440f112eded882d51cb56b89d8'

  url "http://download.mono-project.com/archive/#{version}/macos-10-x86/MonoFramework-MDK-#{version}.macos10.xamarin.x86.pkg"
  homepage 'http://mono-project.com/'
  license :oss

  pkg "MonoFramework-MDK-#{version}.macos10.xamarin.x86.pkg"
  uninstall :pkgutil => 'com.xamarin.mono-MDK.pkg'
end
