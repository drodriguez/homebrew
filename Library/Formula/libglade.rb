require 'brewkit'

class Libglade <Formula
  @url='http://ftp.gnome.org/pub/GNOME/sources/libglade/2.6/libglade-2.6.4.tar.bz2'
  @homepage=''
  @md5='d1776b40f4e166b5e9c107f1c8fe4139'

  def deps
    LibraryDep.new 'gtk'
  end

  def install
    ENV.libxml2
    ENV['PKG_CONFIG_PATH'] = '/usr/local/lib/pkgconfig:/usr/X11/lib/pkgconfig'
    system "./configure", "--prefix=#{prefix}", "--disable-debug", "--disable-dependency-tracking"
    system "make install"
  end
end
