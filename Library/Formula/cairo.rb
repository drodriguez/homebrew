require 'brewkit'

class Cairo <Formula
  @url='http://cairographics.org/releases/cairo-1.8.8.tar.gz'
  @homepage=''
  @md5='d3e1a1035ae563812d4dd44a74fb0dd0'

  def deps
    LibraryDep.new 'pixman'
  end

  def install
    ENV['PKG_CONFIG_PATH'] = '/usr/local/lib/pkgconfig:/usr/X11/lib/pkgconfig'
    system "./configure", "--prefix=#{prefix}", "--disable-debug", "--disable-dependency-tracking", "--enable-pdf", "--enable-quartz", "--disable-xlib"
    system "make install"
  end
end
