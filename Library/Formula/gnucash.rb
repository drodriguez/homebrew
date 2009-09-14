require 'brewkit'

class Gnucash <Formula
  @url='http://www.gnucash.org/pub/gnucash/sources/stable/gnucash-2.2.9.tar.gz'
  @homepage=''
  @md5=''

  def deps
    LibraryDep.new 'goffice'
    LibraryDep.new 'libart_lgpl'
    LibraryDep.new 'libgsf'
    LibraryDep.new 'gtk'
    LibraryDep.new 'ige-mac-integration'
    LibraryDep.new 'libofx'
    LibraryDep.new 'aqbanking'
    LibraryDep.new 'gtkhtml'
    LibraryDep.new 'libgnomeui'
    LibraryDep.new 'libbonoboui'
    LibraryDep.new 'libgnome'
    LibraryDep.new 'libgnomeprint'
    LibraryDep.new 'libgnomeprintui'
    LibraryDep.new 'libgnomecups'
    LibraryDep.new 'libgnomecanvas'
    LibraryDep.new 'gnome-vfs'
    LibraryDep.new 'libbonobo'
    LibraryDep.new 'enchant'
    LibraryDep.new 'dbus'
    LibraryDep.new 'dbus-glib'
    LibraryDep.new 'gnome-keyring'
    LibraryDep.new 'libtasn1'
    LibraryDep.new 'slib'
  end

  def patches
    {
      :p0 => [http://github.com/jralls/gnucash-on-osx/raw/master/patches/gnucash-xlib.patch,
        http://github.com/jralls/gnucash-on-osx/raw/master/patches/gnucash-in.patch],
      :p1 => [http://github.com/jralls/gnucash-on-osx/raw/master/patches/gnucash-integration.patch]
    }
  end

  def install
    system "./configure", "--prefix=#{prefix}", "--disable-debug", "--disable-dependency-tracking", "--enable-ofx", "--enable-aqbanking", "--enable-binreloc"
    system "make install"
  end
end
