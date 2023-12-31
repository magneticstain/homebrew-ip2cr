class Ip2cr < Formula
  desc "IP-2-CloudResource: a tool for correlating an IP address with its associated resource"
  homepage "https://github.com/magneticstain/ip2cr"
  url "https://github.com/magneticstain/ip2cr/releases/download/v0.0.3/ip2cr_Darwin_x86_64_v0.0.3.tar.gz"
  sha256 "eca4e745e6343e93b906a132084b43903c34a7fd643d68a939c7ed2168a4ac2e"
  license "MIT"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(ldflags: "-s -w")
  end

  test do
    # TODO: add actual tests
    system "true"
  end
end
