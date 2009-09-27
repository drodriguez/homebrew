require 'brewkit'

class Tokyocabinet <Formula
  url 'http://1978th.net/tokyocabinet/tokyocabinet-1.4.33.tar.gz'
  homepage 'http://1978th.net/tokyocabinet/'
  md5 'd81c3b04921d189f843c64d56b81a8d4'

  def install
    system "./configure", "--prefix=#{prefix}", "--disable-debug", "--disable-dependency-tracking"
    system "make"
    system "make install"
  end
end
