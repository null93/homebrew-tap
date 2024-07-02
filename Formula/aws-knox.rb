# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class AwsKnox < Formula
  desc "AWS credential process helper"
  homepage "https://github.com/null93/aws-knox"
  version "2.1.1"

  on_macos do
    on_intel do
      url "https://github.com/null93/aws-knox/releases/download/2.1.1/aws-knox_2.1.1_darwin_amd64.tar.gz"
      sha256 "92d93562a8070da2ec9a34d7bfb8d467cd01f80f1a1a0caf044e8c53349c58af"

      def install
        bin.install "knox"
      end
    end
    on_arm do
      url "https://github.com/null93/aws-knox/releases/download/2.1.1/aws-knox_2.1.1_darwin_arm64.tar.gz"
      sha256 "a90f2d372c4b31c645828a3aa3d2b383470650bb1704638eeca7cd393a369edf"

      def install
        bin.install "knox"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/null93/aws-knox/releases/download/2.1.1/aws-knox_2.1.1_linux_amd64.tar.gz"
        sha256 "59fcf518746ea066b9ee14878977fb8552b0e9dd336681db3fa38c118db96fa7"

        def install
          bin.install "knox"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/null93/aws-knox/releases/download/2.1.1/aws-knox_2.1.1_linux_arm64.tar.gz"
        sha256 "2f4da1d1d6f4afc68ed2f153db32c78211047a19e5a79f27752d162e6743942c"

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
