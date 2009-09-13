require 'brewkit'

class Pixman <Formula
  @url='http://cairographics.org/releases/pixman-0.15.12.tar.gz'
  @homepage=''
  @md5='b0270704035fbac78507c91ffd15fcb6'

  def install
    system "./configure", "--prefix=#{prefix}", "--disable-debug", "--disable-dependency-tracking", "--disable-gtk"
    system "make install"
  end
end
