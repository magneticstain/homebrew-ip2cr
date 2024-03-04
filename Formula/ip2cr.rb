# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Ip2cr < Formula
  desc "IP-2-CloudResource: correlate an IP address with its associated cloud resource"
  homepage "https://github.com/magneticstain/ip-2-cloudresource"
  version "2.0.0"
  license "MIT"

  on_macos do
    url "https://github.com/magneticstain/ip-2-cloudresource/releases/download/v2.0.0/ip-2-cloudresource_Darwin_x86_64_v2.0.0.tar.gz"
    sha256 "f5c37249fbec30157e2b7ab4ae3911e6cc399bf65649113230944b3c6642f4e9"

    def install
      bin.install "ip2cr"
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
      url "https://github.com/magneticstain/ip-2-cloudresource/releases/download/v2.0.0/ip-2-cloudresource_Linux_x86_64_v2.0.0.tar.gz"
      sha256 "1c74dfd81a2b172017d41a210864d2aedef39bfab3d6257118502d141fed3db4"

      def install
        bin.install "ip2cr"
      end
    end
  end

  test do
    system "#{bin}/ip2cr --help"
  end
end
