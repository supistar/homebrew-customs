require 'formula'

class Ccmenu < Formula
  desc "CCMenu displays the build status of projects on a continuous integration server as an item in the Mac's menu bar"
  homepage 'http://ccmenu.org/'
  url 'https://github.com/erikdoe/ccmenu/archive/v13.0.tar.gz'
  sha256 '2452b42c0a42e1ca84c71d0929da52425d8af01ecadfa71b2c17bbdb82602b0b'

  bottle do
    cellar :any
  end

  depends_on :xcode => :build

  def install
    xcodebuild "-project", "CCMenu.xcodeproj", "-scheme", "CCMenu", "SYMROOT=build", "OBJROOT=build", "-sdk", "macosx"
    bin.install "build/Debug/CCMenu.app"
  end
end
