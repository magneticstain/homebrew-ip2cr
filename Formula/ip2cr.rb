# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Ip2cr < Formula
  desc "IP-2-CloudResource: correlate an IP address with its associated cloud resource"
  homepage "https://github.com/magneticstain/ip-2-cloudresource"
  version "1.0.0"
  license "MIT"

  on_macos do
    url "https://github.com/magneticstain/ip-2-cloudresource/releases/download/v1.0.0/ip-2-cloudresource_Darwin_x86_64_v1.0.0.tar.gz"
    sha256 "c8c65ea0f09fe9f9c6075bf54c2c990f054abe4e93016324722fd6ba6f023669"

    def install
      bin.install "ip-2-cloudresource"
    end

    if Hardware::CPU.arm?
      def caveats
        <<~EOS
          The darwin_arm64 architecture is not supported for the Ip2cr
          formula at this time. The darwin_amd64 binary may work in compatibility
          mode, but it might not be fully supported.
        EOS
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/magneticstain/ip-2-cloudresource/releases/download/v1.0.0/ip-2-cloudresource_Linux_x86_64_v1.0.0.tar.gz"
      sha256 "e348db80b3fc0f4a7b116f083ad89326022d653fb5bda565fcaaea81a2d84d01"

      def install
        bin.install "ip-2-cloudresource"
      end
    end
  end

  test do
    system "#{bin}/ip2cr --help"
  end
end
