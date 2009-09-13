require 'brewkit'

class GtkOsxDocbook <Formula
  @url='http://downloads.sourceforge.net/sourceforge/gtk-osx/gtk-osx-docbook-1.0.tar.gz'
  @homepage='http://gtk-osx.sourceforge.net/'
  @md5='569af9a83625faa8f5ca6a666d9950b9'

  def install
    system "./configure", "--prefix=#{prefix}", "--disable-debug", "--disable-dependency-tracking"
    ENV['JHBUILD_PREFIX'] = prefix
    system "make install"
  end
end
