require 'brewkit'

class SharedMimeInfo <Formula
  @url='http://people.freedesktop.org/~hadess/shared-mime-info-0.51.tar.bz2'
  @homepage=''
  @md5='01d72161f7d88123fbccd378871f02f0'

  def deps
    LibraryDep.new 'intltool'
    LibraryDep.new 'glib'
  end

  def install
    ENV.libxml2
    system "./configure", "--prefix=#{prefix}", "--disable-debug", "--disable-dependency-tracking"
    system "make install"
  end
end
