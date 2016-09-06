cask :v1 => 'hhkb-professional-driver' do
  version '3.0.0'
  sha256 '5fe2e4cd05e6c7e72ac90cebc3a2de505e8ab6b1b88147d0928468cb1457c634'

  url "https://www.pfu.fujitsu.com/hhkeyboard/downloads/HHKBProMac201511.dmg"
  homepage 'https://www.pfu.fujitsu.com/hhkeyboard/macdownload.html'
  license :gratis

  pkg "for X/HHKB Pro Installer.app/Contents/Resources/10_6/HHKeyboardPro.pkg"
  uninstall pkgutil: 'jp.co.pfu.pkg.HHKBPro.driver',
            kext: ['jp.co.pfu.driver.HHPBPro']

end
