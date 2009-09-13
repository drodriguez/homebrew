require 'brewkit'

class Orbit2 <Formula
  @url='http://ftp.gnome.org/pub/GNOME/sources/ORBit2/2.14/ORBit2-2.14.17.tar.bz2'
  @homepage=''
  @md5='10bfb957fa4a8935a0b4afaee7d71df7'

  def deps
    LibraryDep.new 'libidl'
    LibraryDep.new 'gnome-common'
  end

  def install
    system "./configure", "--prefix=#{prefix}", "--disable-debug", "--disable-dependency-tracking"
    system "make install"
  end
end
