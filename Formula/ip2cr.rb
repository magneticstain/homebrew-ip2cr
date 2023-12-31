# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Ip2cr < Formula
  desc "IP-2-CloudResource: correlate an IP address with its associated cloud resource"
  homepage "https://github.com/magneticstain/ip-2-cloudresource"
  version "1.2.0"
  license "MIT"

  on_macos do
    url "https://github.com/magneticstain/ip-2-cloudresource/releases/download/v1.2.0/ip-2-cloudresource_Darwin_x86_64_v1.2.0.tar.gz"
    sha256 "b728039c234158d057ce7734afc5a1aa579b626f807d3c7929a944fef1aeaa4b"

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
      url "https://github.com/magneticstain/ip-2-cloudresource/releases/download/v1.2.0/ip-2-cloudresource_Linux_x86_64_v1.2.0.tar.gz"
      sha256 "08d722db4b8df8c2bfbacb99a9fad89e16bcc6c90abd6865887b981ac7d36ca9"

      def install
        bin.install "ip2cr"
      end
    end
  end

  test do
    system "#{bin}/ip2cr --help"
  end
end
