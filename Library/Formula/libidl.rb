require 'brewkit'

class Libidl <Formula
  @url='http://ftp.gnome.org/pub/GNOME/sources/libIDL/0.8/libIDL-0.8.13.tar.bz2'
  @homepage=''
  @md5='b43b289a859eb38a710f70622c46e571'

  def deps
    LibraryDep.new 'glib'
  end

  def install
    system "./configure", "--prefix=#{prefix}", "--disable-debug", "--disable-dependency-tracking"
    system "make install"
  end
end
