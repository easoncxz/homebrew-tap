class Hello < Formula
  desc("A trivial program")
  homepage("https://github.com/easoncxz/hello")
  url("https://github.com/easoncxz/hello/archive/v0.0.10.tar.gz")
  sha256("e6bd908bf1072242a12ff4ac4ecfb0d0c1e8ad95436b049d678db27f085b65e6")
  depends_on("gcc@9" => :build)
  bottle do
    cellar(:any_skip_relocation)
    root_url("https://dl.bintray.com/easoncxz/homebrew-bottles")
    sha256("59a245c9eda8be7babbbdde4571f63d6099708f11f0b9c23c8115a23e9c90130" => :catalina)
  end
  def install
    system("./build.sh")
    bin.install("hello-easoncxz")
  end
  test do
    system("hello-easoncxz")
  end
end