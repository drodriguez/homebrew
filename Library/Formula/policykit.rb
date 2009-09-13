require 'brewkit'
require 'etc'

class Policykit <Formula
  include UserManagement

  @url='http://hal.freedesktop.org/releases/PolicyKit-0.9.tar.gz'
  @homepage=''
  @md5='802fd13ae41f73d79359e5ecb0a98716'

  def deps
    LibraryDep.new 'dbus'
    LibraryDep.new 'dbus-glib'
    LibraryDep.new 'glib'
    LibraryDep.new 'intltool'
  end

  def patches
    {
      :p0 => ['http://svn.macports.org/repository/macports/trunk/dports/security/policykit/files/patch-configure.diff',
        'http://svn.macports.org/repository/macports/trunk/dports/security/policykit/files/patch-src-kit-kit-lib.c.diff',
        'http://svn.macports.org/repository/macports/trunk/dports/security/policykit/files/patch-src-polkit-dbus-polkit-simple.c.diff',
        'http://svn.macports.org/repository/macports/trunk/dports/security/policykit/files/patch-src-polkit-dbus-polkit-resolve-exe-helper.c.diff',
        'http://svn.macports.org/repository/macports/trunk/dports/security/policykit/files/patch-src-polkit-grant-polkit-grant-helper-pam.c.diff',
        'http://svn.macports.org/repository/macports/trunk/dports/security/policykit/files/patch-src-polkit-grant-polkit-grant-helper.c.diff']
    }
  end

  def install
    system "./configure", "--prefix=#{prefix}", "--disable-debug", "--disable-dependency-tracking", "--disable-tests", "--disable-man-pages"
    
    addgroup 'polkituser'
    adduser 'polkituser', :gid => group_id('polkituser'), :realname => 'Policy Kit'
    
    system "make install"
  end
end
