class HelloHomebrewPackaging < Formula
  desc("A program to demonstrate Homebrew packaging")
  homepage("https://github.com/easoncxz/hello-homebrew-packaging")
  url("https://github.com/easoncxz/hello-homebrew-packaging/archive/v0.0.1.tar.gz")
  sha256("520c20c76b3530a3cc01c565c28d70bb54ab45cb472b5e8a1ad88d6d6e83f1c0")
  depends_on("gcc@9" => :build)
  bottle do
    root_url "https://dl.bintray.com/easoncxz/homebrew-bottles"
    cellar :any_skip_relocation
    sha256 "82266ac55cad50506dcb56c93e51e9d379a546e988f0e4263a650976a04da475" => :high_sierra
  end
  def install
    system("./build.sh")
    bin.install("bin/hello-homebrew-packaging")
  end
  test do
    system("hello-homebrew-packaging")
  end
end
