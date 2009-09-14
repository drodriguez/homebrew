require 'brewkit'

class Gdbm <Formula
  @url='http://www.softliste.de/gnu/gdbm/gdbm-1.8.3.tar.gz'
  @homepage='http://www.gnu.org/software/gdbm/'
  @md5='1d1b1d5c0245b1c00aff92da751e9aa1'

  def install
    system "sed", '-e "s/-o \$(BINOWN) -g \$(BINGRP)//g"', "-i bak", "Makefile.in"
    system "./configure", "--prefix=#{prefix}", "--disable-debug", "--disable-dependency-tracking"
    system "mkdir", "-p", "#{prefix}/bin"
    system "make install"
  end
end
