require 'formula'

class Ccmenu < Formula
  desc "CCMenu displays the build status of projects on a continuous integration server as an item in the Mac's menu bar"
  homepage 'http://ccmenu.org/'
  url 'https://github.com/erikdoe/ccmenu/archive/v1.10.tar.gz'
  sha1 '6e6c0ef2605ab672ffe69a07bc0d203de1dbcd09'

  bottle do
    cellar :any
  end

  depends_on :xcode => :build

  def install
    xcodebuild "-project", "CCMenu.xcodeproj", "-scheme", "CCMenu", "SYMROOT=build", "OBJROOT=build", "-sdk", "macosx"
    bin.install "build/Debug/CCMenu.app"
  end
end
