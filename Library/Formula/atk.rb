require 'brewkit'

class Atk <Formula
  @url='http://ftp.gnome.org/pub/GNOME/sources/atk/1.26/atk-1.26.0.tar.bz2'
  @homepage=''
  @md5='719229408019c548855673840679f156'

  def deps
    LibraryDep.new 'glib'
  end

  def install
    system "./configure", "--prefix=#{prefix}", "--disable-debug", "--disable-dependency-tracking"
    system "make install"
  end
end
