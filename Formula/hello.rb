
class Hello < Formula
  desc("A trivial program")
  homepage("https://github.com/easoncxz/hello")
  url("https://github.com/easoncxz/hello/archive/v0.0.1.tar.gz")
  sha256("5715bc72492c2fa235c767f804133d89f01692ae3ad16183feee71981175c187")
  depends_on("gcc@9" => :build)
  bottle do
    cellar(:any_skip_relocation)
    root_url("https://dl.bintray.com/easoncxz/homebrew-bottles")
  end
  def install
    system("./build.sh")
    bin.install("hello-easoncxz")
  end
  test do
    system("hello-easoncxz")
  end
end
