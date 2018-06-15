cask :v1 => 'hhkb-professional-driver' do
  version '3.0.1'
  sha256 '91d549cc88b690a04d30c5939029e7b46a1a22e16b17d1821665b9c2f0da46ea'

  url "https://www.pfu.fujitsu.com/hhkeyboard/downloads/HHKBProMac201609.dmg"
  homepage 'https://www.pfu.fujitsu.com/hhkeyboard/macdownload.html'

  pkg "for X/HHKB Pro Installer.app/Contents/Resources/10_6/HHKeyboardPro.pkg"
  uninstall pkgutil: 'jp.co.pfu.pkg.HHKBPro.lib_driver',
            kext: ['jp.co.pfu.driver.HHPBPro']

end
