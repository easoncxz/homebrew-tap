class HackAssembler < Formula
  desc("A toy assembler for the Hack machine language")
  homepage("https://github.com/easoncxz/hack-assembler")
  url("https://github.com/easoncxz/hack-assembler/archive/v0.1.1.4.tar.gz")
  sha256("46823a63bf32b26f09764a70babe59190461f84f8f04be796465d0756698e2a3")
  depends_on("haskell-stack" => :build)
  bottle do
    cellar(:any_skip_relocation)
    rebuild(1)
    root_url("https://dl.bintray.com/easoncxz/homebrew-bottles")
    sha256("4be7efbbfb251b46a860080b753bd280b36726e1d8b7815893e35354ae33f730" => :yosemite)
    sha256("d985f1ec04a7a2c1cbf493362045f436e626e82e3e00b63e279504089c0ac2fd" => :high_sierra)
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