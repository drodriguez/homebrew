require 'brewkit'

class DbusGlib <Formula
  @url='http://dbus.freedesktop.org/releases/dbus-glib/dbus-glib-0.76.tar.gz'
  @homepage=''
  @md5='d3b716a7e798faa1c6a867675f00306a'

  def deps
    LibraryDep.new 'dbus'
    LibraryDep.new 'glib'
  end

  def install
    system "./configure", "--prefix=#{prefix}", "--disable-debug", "--disable-dependency-tracking"
    system "make install"
  end
end
