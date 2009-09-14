require 'brewkit'

class DesktopFileUtils <Formula
  @url='http://www.freedesktop.org/software/desktop-file-utils/releases/desktop-file-utils-0.15.tar.gz'
  @homepage=''
  @md5='2fe8ebe222fc33cd4a959415495b7eed'

  def deps
    LibraryDep.new 'glib'
    LibraryDep.new 'intltool'
  end

  def install
    system "./configure", "--prefix=#{prefix}", "--disable-debug", "--disable-dependency-tracking"
    system "make install"
  end
end
