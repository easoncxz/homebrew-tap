class HackAssembler < Formula
  desc("A toy assembler for the Hack machine language")
  homepage("https://github.com/easoncxz/hack-assembler")
  url("https://github.com/easoncxz/hack-assembler/archive/v0.1.1.34.tar.gz")
  sha256("bb39111261af5f631c46bdf893db0a3837a5853fc634142245090a6f9036f438")
  depends_on("haskell-stack" => :build)
  bottle do
    cellar(:any_skip_relocation)
    root_url("https://dl.bintray.com/easoncxz/homebrew-bottles")
    sha256("869128f82a629d6ee68a0075b713a6a38e0be8821b3ac67136db2a32fc5972df" => :high_sierra)
  end
  def install
    system("stack", "setup", "--verbose")
    system("stack", "build")
    prefix = `#{"stack path --dist-dir"}`.chomp
    bin.install("#{prefix}#{"/build/hack-assembler/hack-assembler"}")
  end
  test do
    system("echo", "D=D+1", "|", "hack-assembler-exe")
  end
end