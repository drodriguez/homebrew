require 'brewkit'

class GnomeDocUtils <Formula
  @url='http://downloads.sourceforge.net/sourceforge/gtk-osx/gnome-doc-utils-0.10.13-fake2.tar.gz'
  @version='0.10.13-fake2'
  @homepage=''
  @md5=''
  
  def deps
    LibraryDep.new 'gtk-osx-docbook'
  end

  def install
    system "./configure", "--prefix=#{prefix}"
    system "mkdir", "#{prefix}/bin"
    system "make install"
  end
end
