class Hello < Formula
  desc("A trivial program")
  homepage("https://github.com/easoncxz/hello")
  url("https://github.com/easoncxz/hello/archive/v0.0.11.tar.gz")
  sha256("902f6f7c7e15adc0d26bd4d39c33b3486b3e22274137757166950b5a8697db34")
  depends_on("gcc@9" => :build)
  bottle do
    cellar(:any_skip_relocation)
    root_url("https://dl.bintray.com/easoncxz/homebrew-bottles")
    sha256("1d5e014d68b154ef351b6b74baabec60211cd1fba2f65f1aa08fa3749aa50904" => :high_sierra)
    sha256("f28efbeb87609c38f1e3687cfba43a1ba23653b393ee816b8d94642ba68ed7d5" => :catalina)
  end
  def install
    system("./build.sh")
    bin.install("hello-easoncxz")
  end
  test do
    system("hello-easoncxz")
  end
end