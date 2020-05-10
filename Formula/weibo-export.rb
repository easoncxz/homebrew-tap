class WeiboExport < Formula
  desc("Semi-automatic CLI tool to download mblogs from weibo.com")
  homepage("https://github.com/easoncxz/weibo-export")
  url("https://github.com/easoncxz/weibo-export/archive/v0.1.0.0.tar.gz")
  sha256("0290e779938ad6d4d7c96231b9ddb370ec860130a6dc42be2a01eebb9c730bfe")
  bottle do
    root_url "https://dl.bintray.com/easoncxz/homebrew-bottles"
  end
  def install
    system("./automation/install-stack.sh")
    system("stack", "setup", "--verbose")
    system("stack", "build")
    prefix = `#{"stack path --dist-dir"}`.chomp
    bin.install("#{prefix}#{"/build/weibo-export/weibo-export"}")
  end
  test do
    system("weibo-export", "--help")
  end
end
