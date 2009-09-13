require 'brewkit'

class GtkDoc <Formula
  @url='ftp://ftp.gnome.org/pub/gnome/sources/gtk-doc/1.11/gtk-doc-1.11.tar.bz2'
  @homepage=''
  @md5='b5e268c71fa90aad890cf53715664d0a'
  
  def deps
    BinaryDep.new 'pkg-config'
    LibraryDep.new 'gtk-osx-docbook'
    LibraryDep.new 'gnome-doc-utils'
  end

  def install
    system "./configure", "--prefix=#{prefix}", "--disable-debug", "--disable-dependency-tracking", "--disable-scrollkeeper", "--with-xml-catalog=#{HOMEBREW_PREFIX}/etc/xml/catalog"
    system "make -k -i"
    system "make -k -i install"
  end
end
