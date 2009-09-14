require 'brewkit'

class GnomeMimeData <Formula
  @url='http://ftp.gnome.org/pub/GNOME/sources/gnome-mime-data/2.18/gnome-mime-data-2.18.0.tar.bz2'
  @homepage=''
  @md5='541858188f80090d12a33b5a7c34d42c'

  def deps
    LibraryDep.new 'intltool'
    LibraryDep.new 'gnome-common'
    LibraryDep.new 'glib'
  end

  def install
    system "./configure", "--prefix=#{prefix}", "--disable-debug", "--disable-dependency-tracking"
    system "make install"
  end
end
