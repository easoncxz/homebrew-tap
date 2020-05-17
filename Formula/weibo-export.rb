class WeiboExport < Formula
  desc("Semi-automatic CLI tool to download mblogs from weibo.com")
  homepage("https://github.com/easoncxz/weibo-export")
  url("https://github.com/easoncxz/weibo-export/archive/v0.2.0.0.tar.gz")
  sha256("1fcba66780370d1b3017a21bcd7748f696932a3567424a82cf5f41cb4dd5b2e4")
  depends_on("haskell-stack" => :build)
  bottle do
    cellar(:any_skip_relocation)
    root_url("https://dl.bintray.com/easoncxz/homebrew-bottles")
    sha256("9ba9f7a92b246146a56418f9fd24ed95b28ca68579cb10015da562d873a49a47" => :catalina)
  end
  def install
    system("stack", "upgrade", "--force-download")
    system("stack", "setup", "--verbose")
    system("stack", "build")
    prefix = `#{"stack path --dist-dir"}`.chomp
    bin.install("#{prefix}#{"/build/weibo-export/weibo-export"}")
  end
  test do
    system("weibo-export", "--help")
  end
end