require 'brewkit'

class Dbus <Formula
  @url='http://dbus.freedesktop.org/releases/dbus/dbus-1.2.4.tar.gz'
  @homepage=''
  @md5='2e643910a09f44b000a0d76038637999'

  def deps
    LibraryDep.new 'glib'
  end

  def install
    system "./configure", "--prefix=#{prefix}", "--disable-debug", "--disable-dependency-tracking"
    system "make install"
  end
end
