class HackAssembler < Formula
  desc("A toy assembler for the Hack machine language")
  homepage("https://github.com/easoncxz/hack-assembler")
  url("https://github.com/easoncxz/hack-assembler/archive/v0.1.1.18.tar.gz")
  sha256("126e8e576d206820909a5cccd6caad514670e80f4d109077c8d130af0f385e04")
  depends_on("haskell-stack" => :build)
  bottle do
    cellar(:any_skip_relocation)
    rebuild(1)
    root_url("https://dl.bintray.com/easoncxz/homebrew-bottles")
    sha256("8edbe80cebbc107944b9a4f952c368666242917faa212e7b684983b7ba53e02b" => :high_sierra)
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