require 'brewkit'

class Gconf <Formula
  @url='http://ftp.gnome.org/pub/GNOME/sources/GConf/2.26/GConf-2.26.2.tar.bz2'
  @homepage=''
  @md5='8b55d58dab13e821e048627aa4f92b8b'

  def deps
    LibraryDep.new 'intltool'
    LibraryDep.new 'orbit2'
    LibraryDep.new 'gtk'
    LibraryDep.new 'dbus-glib'
    LibraryDep.new 'policykit'
  end

  def install
    system "./configure", "--prefix=#{prefix}", "--disable-debug", "--disable-dependency-tracking"
    system "make install"
  end
end
