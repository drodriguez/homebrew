require 'brewkit'

class Libdaemon <Formula
  @url='http://0pointer.de/lennart/projects/libdaemon/libdaemon-0.13.tar.gz'
  @homepage=''
  @md5='ae9113fcd825d5a7f07e5ddccb3c3102'

  def patches
    {
      :p0 => ['http://svn.macports.org/repository/macports/trunk/dports/devel/libdaemon/files/patch-libdaemon_dfork.c.diff'],
    }
  end
  def install
    system "./configure", "--prefix=#{prefix}", "--disable-debug", "--disable-dependency-tracking", "--disable-lynx"
    system "make install"
  end
end
