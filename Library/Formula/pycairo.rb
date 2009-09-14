require 'brewkit'

class Pycairo <Formula
  @url='http://cairographics.org/releases/pycairo-1.4.12.tar.gz'
  @homepage=''
  @md5='c63199d35b1e1d3c5133509f315f70d7'

  def deps
    LibraryDep.new 'cairo'
  end

  def install
    ENV['PKG_CONFIG_PATH'] = '/usr/local/lib/pkgconfig:/usr/X11/lib/pkgconfig'
    system "./configure", "--prefix=#{prefix}", "--disable-debug", "--disable-dependency-tracking"
    system "make install"
  end
end
