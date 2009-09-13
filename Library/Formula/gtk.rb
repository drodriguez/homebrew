require 'brewkit'

class Gtk <Formula
  @url='http://ftp.gnome.org/pub/GNOME/sources/gtk+/2.16/gtk+-2.16.2.tar.bz2'
  @homepage=''
  @md5='396e98df15f6e4005e360b5710660ce3'

  def deps
    LibraryDep.new 'pango'
    LibraryDep.new 'atk'
  end

  def install
    ENV['PKG_CONFIG_PATH'] = '/usr/local/lib/pkgconfig:/usr/X11/lib/pkgconfig'
    system "./configure", "--prefix=#{prefix}", "--disable-debug", "--disable-dependency-tracking", "--with-gdktarget=quartz", "--without-libjasper"
    system "make install"
  end
end
