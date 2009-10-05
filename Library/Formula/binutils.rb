require 'brewkit'

class Binutils <Formula
  url 'http://ftp.gnu.org/gnu/binutils/binutils-2.19.1.tar.bz2'
  homepage 'http://www.gnu.org/software/binutils/binutils.html'
  md5 '09a8c5821a2dfdbb20665bc0bd680791'

  def install
    system "./configure", "--prefix=#{prefix}", "--disable-debug", "--disable-dependency-tracking", "--enable-targets=powerpc-macos10", "--program-prefix=g"
    system "make install"
  end
end
