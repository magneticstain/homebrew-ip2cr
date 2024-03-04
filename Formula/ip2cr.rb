# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Ip2cr < Formula
  desc "IP-2-CloudResource: correlate an IP address with its associated cloud resource"
  homepage "https://github.com/magneticstain/ip-2-cloudresource"
  version "2.0.3"
  license "MIT"

  on_macos do
    url "https://github.com/magneticstain/ip-2-cloudresource/releases/download/v2.0.3/ip-2-cloudresource_Darwin_x86_64_v2.0.3.tar.gz"
    sha256 "54885ff3d208e1e83170cb9f1225471b43b96e6ab6eeec78e946dc20e9c75288"

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
      url "https://github.com/magneticstain/ip-2-cloudresource/releases/download/v2.0.3/ip-2-cloudresource_Linux_x86_64_v2.0.3.tar.gz"
      sha256 "5a9425114c265cfac6a7655ac4fca6482275d335e6f298d78139293ebcdbbb30"

      def install
        bin.install "ip2cr"
      end
    end
  end

  test do
    system "#{bin}/ip2cr --help"
  end
end
