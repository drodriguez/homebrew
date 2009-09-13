require 'brewkit'

class Pango <Formula
  @url='http://ftp.gnome.org/pub/GNOME/sources/pango/1.24/pango-1.24.3.tar.bz2'
  @homepage=''
  @md5='63979efe16fe5abaa93c8ea48959e8f3'

  def deps
    LibraryDep.new 'glib'
    LibraryDep.new 'cairo'
  end

  def install
    ENV['PKG_CONFIG_PATH'] = '/usr/local/lib/pkgconfig:/usr/X11/lib/pkgconfig'
    system "./configure", "--prefix=#{prefix}", "--disable-debug", "--disable-dependency-tracking", "--without-x", "--with-included-modules=basic-atsui"
    system "make -k -C modules; make"
    system "make install"
  end
end
