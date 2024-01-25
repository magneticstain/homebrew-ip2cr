# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Ip2cr < Formula
  desc "IP-2-CloudResource: correlate an IP address with its associated cloud resource"
  homepage "https://github.com/magneticstain/ip-2-cloudresource"
  version "1.4.6"
  license "MIT"

  on_macos do
    url "https://github.com/magneticstain/ip-2-cloudresource/releases/download/v1.4.6/ip-2-cloudresource_Darwin_x86_64_v1.4.6.tar.gz"
    sha256 "b78d8821c3503ab50bf49388dc97e2ac0b537e535fbf6e4b36cf3c662de997f8"

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
      url "https://github.com/magneticstain/ip-2-cloudresource/releases/download/v1.4.6/ip-2-cloudresource_Linux_x86_64_v1.4.6.tar.gz"
      sha256 "ca89f026a3966f156ec333dc97e4e5cade3619eae5e7cdf48166a603f007d363"

      def install
        bin.install "ip2cr"
      end
    end
  end

  test do
    system "#{bin}/ip2cr --help"
  end
end
