class HackAssembler < Formula
  desc("A toy assembler for the Hack machine language")
  homepage("https://github.com/easoncxz/hack-assembler")
  url("https://github.com/easoncxz/hack-assembler/archive/v0.1.1.2.tar.gz")
  sha256("d30bd0808a77667fe11bccd82e401a452505d0e7346586a5537f8c57d43e5432")
  depends_on("haskell-stack" => :build)
  bottle do
    root_url "http://localhost:8081"
    sha256 "2fc69c2569a6e76f0c4dbffaecd63cec294c4a9ec253c91c6bd3feddbb32027c" => :yosemite
  end
  def install
    system("stack", "setup")
    system("stack", "build")
    prefix = `#{"stack path --dist-dir"}`.chomp
    bin.install("#{prefix}#{"/build/hack-assembler/hack-assembler"}")
  end
  test do
    system("echo", "D=D+1", "|", "hack-assembler-exe")
  end
end
