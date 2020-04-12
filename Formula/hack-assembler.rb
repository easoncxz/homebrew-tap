class HackAssembler < Formula
  desc("A toy assembler for the Hack machine language")
  homepage("https://github.com/easoncxz/hack-assembler")
  url("https://github.com/easoncxz/hack-assembler/archive/v0.1.1.39.tar.gz")
  sha256("9c517ebb3e802ffd1ffb5b9bf4d106e3b1a908b1a1bc2774b69c1ba9df342fcf")
  depends_on("haskell-stack" => :build)
  bottle do
    cellar(:any_skip_relocation)
    root_url("https://dl.bintray.com/easoncxz/homebrew-bottles")
    sha256("2a0faf7732073761a952fd32e31a7d6284c00a4d96f93d3549f002935fd79cbc" => :mojave)
    sha256("13a0a72a0b57ec95fa4fe095261d78735a429cd8119874ea408b50ade789a57d" => :high_sierra)
    sha256("808d1e85a051cd2e449deffe79362223fb01ecf208cc491b6aa8c7966f325109" => :catalina)
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