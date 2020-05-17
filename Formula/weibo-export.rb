class WeiboExport < Formula
  desc("Semi-automatic CLI tool to download mblogs from weibo.com")
  homepage("https://github.com/easoncxz/weibo-export")
  url("https://github.com/easoncxz/weibo-export/archive/v0.1.0.2.tar.gz")
  sha256("4b0938c442bfbde3d34037ace1024bf235f4bdf30f64319c1413d0b4cf681b07")
  depends_on("haskell-stack" => :build)
  bottle do
    cellar(:any_skip_relocation)
    root_url("https://dl.bintray.com/easoncxz/homebrew-bottles")
    sha256("d4346671c142efe9c010d73094ee3293c0cb3d5261e655b576cf58d07c634c45" => :mojave)
    sha256("d10b51d80cd6e371cc825fd9239ab96faa54ff0b0242928184b4dfd317e673aa" => :high_sierra)
    sha256("d7b4f9a816290971eeef8bc172fbcb0eb00ab9a40a9d5b661401bd9383ee16a6" => :catalina)
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