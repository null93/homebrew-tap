# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Vhost < Formula
  desc "NGINX config structure for provisioning virtual hosts with a CLI tool"
  homepage "https://github.com/null93/vhost"
  version "0.0.4"

  on_macos do
    on_intel do
      url "https://github.com/null93/vhost/releases/download/0.0.4/vhost_0.0.4_darwin_amd64.tar.gz"
      sha256 "940f9c8808801954f1d8d29965e3516291a7eebdd47482d90e8b0bac27144527"

      def install
        bin.install "vhost"
      end
    end
    on_arm do
      url "https://github.com/null93/vhost/releases/download/0.0.4/vhost_0.0.4_darwin_arm64.tar.gz"
      sha256 "d5f9edced3e20ed1d74d8c6eaaf7ab1ad13b37c1ac4f63a09a8ec0298e275bd8"

      def install
        bin.install "vhost"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/null93/vhost/releases/download/0.0.4/vhost_0.0.4_linux_amd64.tar.gz"
        sha256 "a176eaaf60fb305f5be06853d9227e2d380d809851e009853fc21d3060b77b4b"

        def install
          bin.install "vhost"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/null93/vhost/releases/download/0.0.4/vhost_0.0.4_linux_arm64.tar.gz"
        sha256 "c3b37b3fd2bf72b192db63236e9cf43a16f57ed9b66da701e701a6fd39b6653f"

        def install
          bin.install "vhost"
        end
      end
    end
  end

  test do
    system "#{bin}/vhost -v"
  end
end
