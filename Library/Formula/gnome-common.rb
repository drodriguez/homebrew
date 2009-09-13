require 'brewkit'

class GnomeCommon <Formula
  @url='ftp://ftp.gnome.org/pub/gnome/sources/gnome-common/2.26/gnome-common-2.26.0.tar.bz2'
  @homepage=''
  @md5='196daa38cb21d91da1d6ec085f1e158b'

  def install
    system "./configure", "--prefix=#{prefix}", "--disable-debug", "--disable-dependency-tracking"
    system "make install"
  end
end
