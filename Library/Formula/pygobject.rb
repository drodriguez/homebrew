require 'brewkit'

class Pygobject <Formula
  @url='http://ftp.gnome.org/pub/GNOME/sources/pygobject/2.19/pygobject-2.19.0.tar.bz2'
  @homepage=''
  @md5='ef918a6c1ce5edf027ba8d3d28b6ed0c'

  def deps
    LibraryDep.new 'glib'
  end

  def install
    system "./configure", "--prefix=#{prefix}", "--disable-debug", "--disable-dependency-tracking"
    system "make install"
  end
end
