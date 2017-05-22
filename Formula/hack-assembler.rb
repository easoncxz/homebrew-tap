class HackAssembler < Formula
  desc("A toy assembler for the Hack machine language")
  homepage("https://github.com/easoncxz/hack-assembler")
  url("https://github.com/easoncxz/hack-assembler/archive/v0.1.1.2.tar.gz")
  sha256("d30bd0808a77667fe11bccd82e401a452505d0e7346586a5537f8c57d43e5432")
  depends_on("haskell-stack" => :build)
  bottle do
    root_url "http://localhost:8081"
    sha256 "4be7efbbfb251b46a860080b753bd280b36726e1d8b7815893e35354ae33f730" => :yosemite
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
