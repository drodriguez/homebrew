require 'brewkit'

class Tiff <Formula
  @url='ftp://ftp.remotesensing.org/pub/libtiff/tiff-3.8.2.tar.gz'
  @homepage=''
  @md5='fbb6f446ea4ed18955e2714934e5b698'

  def deps
    LibraryDep.new 'jpeg'
  end

  def install
    system "./configure", "--prefix=#{prefix}", "--disable-debug", "--disable-dependency-tracking", "--without-x", "--without-apple-opengl-framework"
    system "make install"
  end
end
