require 'brewkit'

class DbusPython <Formula
  @url='http://dbus.freedesktop.org/releases/dbus-python/dbus-python-0.83.0.tar.gz'
  @homepage=''
  @md5='562c78876219bf458d79a041af18293d'

  def deps
    LibraryDep.new 'dbus'
    LibraryDep.new 'dbus-glib'
    OptionalLibraryDep.new 'pygobject'
  end

  def install
    system "./configure", "--prefix=#{prefix}", "--disable-debug", "--disable-dependency-tracking"
    system "make install"
  end
end
