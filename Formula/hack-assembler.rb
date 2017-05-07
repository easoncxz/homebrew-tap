
class HackAssembler < Formula
    desc = "An assembler"
    homepage = "https://google.com"
    url = "https://dl.bintray.com/easoncxz/hello-bintray/hack-assembler.tar.gz"
    sha256 = "f2de5f9e7c7767647ca25ad0a140dfd7929cf0fedf1aba18f016afa9b7e0995c"

    depends_on "haskell-stack" => :build

    def install
        system "stack", "install"
    end

    test do
        system "echo" "'D=D+1'" "|" "hack-assembler-exe"
    end
end
