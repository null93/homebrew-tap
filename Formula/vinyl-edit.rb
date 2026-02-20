# typed: false
# frozen_string_literal: true

class VinylEdit < Formula
  desc "A CLI tool for editing Vinyl VCL files"
  homepage "https://github.com/null93/vinyl-edit"
  version "0.0.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/null93/vinyl-edit/releases/download/0.0.1/vinyl-edit_0.0.1_darwin_arm64"
      sha256 "1cde7565337ac5471e501db18c955ad1e5dc758720ef7b31e19e671a9b1349f0"

      def install
        bin.install "vinyl-edit_0.0.1_darwin_arm64" => "vinyl-edit"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/null93/vinyl-edit/releases/download/0.0.1/vinyl-edit_0.0.1_linux_amd64"
      sha256 "ac6fbd00b3c5aaeb4c00d82eed21d8653dea01b550329da6e94e9d20f1f875c6"

      def install
        bin.install "vinyl-edit_0.0.1_linux_amd64" => "vinyl-edit"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/null93/vinyl-edit/releases/download/0.0.1/vinyl-edit_0.0.1_linux_arm64"
      sha256 "e8e862ad8c11d71317d58c4d65acd865289a8148319b2c81c4ef3244867f05f9"

      def install
        bin.install "vinyl-edit_0.0.1_linux_arm64" => "vinyl-edit"
      end
    end
  end

  test do
    system "#{bin}/vinyl-edit format /dev/null"
  end
end
