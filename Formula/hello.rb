class Hello < Formula
  desc("A trivial program")
  homepage("https://github.com/easoncxz/hello")
  url("https://github.com/easoncxz/hello/archive/v0.0.13.tar.gz")
  sha256("deb54cde8560b4eb97000b6819a3646ebf98aab689ddce12f6c84410e56780f6")
  depends_on("gcc@9" => :build)
  bottle do
    cellar(:any_skip_relocation)
    root_url("https://dl.bintray.com/easoncxz/homebrew-bottles")
    sha256("21e5a8410d95844dd827ff7426af53418237cbb5ceb20be9265ba10a3051db52" => :high_sierra)
    sha256("1d88076ce6ce07344d7c9d97a39ff2a85a070b43989e9a0d76c56843d5b7b5a9" => :catalina)
  end
  def install
    system("./build.sh")
    bin.install("hello-easoncxz")
  end
  test do
    system("hello-easoncxz")
  end
end