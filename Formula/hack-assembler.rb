class HackAssembler < Formula
  desc("A toy assembler for the Hack machine language")
  homepage("https://github.com/easoncxz/hack-assembler")
  url("https://github.com/easoncxz/hack-assembler/archive/v0.1.1.28.tar.gz")
  sha256("9779edaab9b012233467de91e0e36031d867501fe3efef8feb29a13eae9c1f03")
  depends_on("haskell-stack" => :build)
  bottle do
    cellar(:any_skip_relocation)
    root_url("https://dl.bintray.com/easoncxz/homebrew-bottles")
    sha256("50126d835a3a7a04b94c7f9358bcccb3c36bd00b97d4cfea2844d55e0e0195d3" => :sierra)
    sha256("843416980a1b6d8629152015f44a70887b0377fd701b6dd220fc899c153a0439" => :high_sierra)
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