class HelloHomebrewPackaging < Formula
  desc("A program to demonstrate Homebrew packaging")
  homepage("https://github.com/easoncxz/hello-homebrew-packaging")
  url("https://github.com/easoncxz/hello-homebrew-packaging/archive/v0.0.1.tar.gz")
  sha256("520c20c76b3530a3cc01c565c28d70bb54ab45cb472b5e8a1ad88d6d6e83f1c0")
  depends_on("gcc@9" => :build)
  def install
    system("./build.sh")
    bin.install("bin/hello-homebrew-packaging")
  end
  test do
    system("hello-homebrew-packaging")
  end
end
