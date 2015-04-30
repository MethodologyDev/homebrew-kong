class Kong < Formula
  homepage "http://getkong.org"
  url "https://github.com/Mashape/kong/archive/0.2.0-2.tar.gz"
  version "0.2.0-2"
  sha256 "889ecd7436ab08ab35b849456fc5400d2a5dbafb285db07ae67b4076d5cd5b63"
  head "https://github.com/mashape/kong.git"

  depends_on 'openssl'
  depends_on 'mashape/kong/ngx_openresty'
  depends_on 'mashape/kong/luarocks_luajit'

  option "with-cassandra", "Also install the cassandra formula from homebrew/cassandra"
  depends_on 'cassandra' => :optional

  def install
    system "make install"
  end
end
