require 'brewkit'

class Avahi <Formula
  @url='http://avahi.org/download/avahi-0.6.22.tar.gz'
  @homepage='http://avahi.org/'
  @md5='c84b1a8a23126e188426728710414dc8'

 def deps
   LibraryDep.new 'libdaemon'
   LibraryDep.new 'dbus-python'
   LibraryDep.new 'pygtk'
   LibraryDep.new 'gdbm'
 end

  def install
    ENV['PKG_CONFIG_PATH'] = '/usr/local/lib/pkgconfig:/usr/X11/lib/pkgconfig'
    system "sed", '-e "s/-D_XOPEN_SOURCE=500//g"', "-i bak", "configure"
    system "sed", "-e \"s|\/Library\/|#{prefix}\/|g\"", "-i bak", "initscript/darwin/Makefile.in"
    system "./configure", "--prefix=#{prefix}", "--disable-debug", "--disable-dependency-tracking", "--disable-qt3", "--disable-qt4", "--disable-mono", "--disable-monodoc", "--disable-manpages", "--disable-python", "--enable-compat-howl", "--enable-compat-libdns_sd"
    system "make install"
  end
end
