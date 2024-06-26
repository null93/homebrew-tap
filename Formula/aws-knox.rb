# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class AwsKnox < Formula
  desc "AWS credential process helper"
  homepage "https://github.com/null93/aws-knox"
  version "1.1.1"

  on_macos do
    on_intel do
      url "https://github.com/null93/aws-knox/releases/download/1.1.1/aws-knox_1.1.1_darwin_amd64.tar.gz"
      sha256 "9bd3cec62efdcd9228977f4d23b9c5f97535ca487a8e8ef4c1d6fd07dcdf683d"

      def install
        bin.install "knox"
      end
    end
    on_arm do
      url "https://github.com/null93/aws-knox/releases/download/1.1.1/aws-knox_1.1.1_darwin_arm64.tar.gz"
      sha256 "7ba42eeb9c64a7c2d185c49feb903a7c3dcd06c0a32fdb7294ba031eb73eeebc"

      def install
        bin.install "knox"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/null93/aws-knox/releases/download/1.1.1/aws-knox_1.1.1_linux_amd64.tar.gz"
        sha256 "6fce4acd9bcceba8ec2773b9686de7698d724a8232479f72a74d3851f98ac0d9"

        def install
          bin.install "knox"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/null93/aws-knox/releases/download/1.1.1/aws-knox_1.1.1_linux_arm64.tar.gz"
        sha256 "7b3bac68cff33ccb28b9ed8fb57acaa1136a8e30efd4ef37a798afc1c810a56e"

        def install
          bin.install "knox"
        end
      end
    end
  end

  test do
    system "#{bin}/knox -v"
  end
end
