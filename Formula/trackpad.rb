class Trackpad < Formula
  desc "Trackpad utility tool"
  homepage "https://github.com/leninmehedy/trackpad"
  url "https://github.com/leninmehedy/trackpad/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "9c3a959af4e8a10814388d9569c2afaca6856c08a64fe88d2723f621e2f23445"
  license "MIT"
  
  depends_on "go" => :build

  def install
    system "go", "build", "-o", bin/"trackpad", "."
  end

  test do
    system "#{bin}/trackpad", "--version"
  end
end

