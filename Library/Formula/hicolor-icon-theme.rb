require 'brewkit'

class HicolorIconTheme <Formula
  @url='http://icon-theme.freedesktop.org/releases/hicolor-icon-theme-0.10.tar.gz'
  @homepage=''
  @md5='3534f7b8e59785c7d5bfa923e85510a7'

  def install
    system "./configure", "--prefix=#{prefix}", "--disable-debug", "--disable-dependency-tracking"
    system "make install"
  end
end
