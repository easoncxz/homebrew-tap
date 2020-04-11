class Hello < Formula
  desc("A trivial program")
  homepage("https://github.com/easoncxz/hello")
  url("https://github.com/easoncxz/hello/archive/v0.0.8.tar.gz")
  sha256("acb8c2132458e6d3436d5539af54a518eeea74308d80d985cc92d4b5c6e8b31c")
  depends_on("gcc@9" => :build)
  bottle do
    cellar(:any_skip_relocation)
    root_url("https://dl.bintray.com/easoncxz/homebrew-bottles")
    sha256("92fcf5a967464357c72d7e7d854533d30635e29cd1765a5fc5eaed35e37a032d" => :high_sierra)
  end
  def install
    system("./build.sh")
    bin.install("hello-easoncxz")
  end
  test do
    system("hello-easoncxz")
  end
end