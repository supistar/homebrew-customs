cask :v1 => 'unity463p2' do
  version '4.6.3p2'
  sha256 'b2c86867864ab9fea636f4d4e91dead95ad20da8b245b117276b1952e60f4af9'

  url "http://beta.unity3d.com/download/0553181569/unity_update-4.6.3p2.dmg"
  homepage 'http://unity3d.com/unity/'
  license :commercial

  pkg 'Unity Update.pkg'

  uninstall :pkgutil => 'com.unity3d.*'
end
