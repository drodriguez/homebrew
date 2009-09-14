require 'brewkit'

class Pygtk <Formula
  @url='http://ftp.gnome.org/pub/GNOME/sources/pygtk/2.16/pygtk-2.16.0.tar.bz2'
  @homepage=''
  @md5='bd0d437fefd6d5390f5d770a495cd50c'

  def deps
    LibraryDep.new 'pygobject'
    LibraryDep.new 'gtk'
    LibraryDep.new 'pycairo'
    LibraryDep.new 'libglade'
  end

  def install
    ENV['PKG_CONFIG_PATH'] = '/usr/local/lib/pkgconfig:/usr/X11/lib/pkgconfig'
    system "./configure", "--prefix=#{prefix}", "--disable-debug", "--disable-dependency-tracking"
    system "make install"
  end
end
