class Passgen < Formula
  desc "Simple memorable and customisable password generator"
  homepage "https://github.com/nicholastay/passgen"
  url "https://github.com/nicholastay/passgen/archive/refs/tags/v0.1.1.tar.gz"
  sha256 "688d0c083403a990f78c85020ec5ff6d2cd13b2d07fc28df2858397f2c4044da"
  license "Zlib"
  head "https://github.com/nicholastay/passgen.git", branch: "master", using: :git

  def install
    system "make", "install", "PREFIX=#{prefix}"
  end

  test do
    assert shell_output("#{bin}/passgen", 0).strip.length == 9
  end
end
