require 'brewkit'

class IgeMacIntegration <Formula
  @url='http://downloads.sourceforge.net/sourceforge/gtk-osx/ige-mac-integration-0.8.6.tar.gz'
  @homepage=''
  @md5='83be92bd3757cde136a17bbd8adfb980'

  def deps
    LibraryDep.new 'gtk'
  end

  def install
    ENV['PKG_CONFIG_PATH'] = '/usr/local/lib/pkgconfig:/usr/X11/lib/pkgconfig'
    system "./configure", "--prefix=#{prefix}", "--disable-debug", "--disable-dependency-tracking", "--disable-python"
    system "make install"
  end
end
