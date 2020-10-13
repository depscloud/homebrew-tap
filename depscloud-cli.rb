# This file was generated by GoReleaser. DO NOT EDIT.
class DepscloudCli < Formula
  desc "Command line interface to the deps.cloud API"
  homepage "https://deps.cloud/"
  version "0.2.29"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/depscloud/depscloud/releases/download/v0.2.29/deps_0.2.29_darwin_amd64.tar.gz"
    sha256 "606b54d059a0895e11bccc41cf5d3123cb99958715d2618bae95ccc2a2a73973"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/depscloud/depscloud/releases/download/v0.2.29/deps_0.2.29_linux_amd64.tar.gz"
      sha256 "6a3f8caad2bc9f734fdd256d7d26f57da6f77437716fa1da8b8e07ded940fbf0"
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/depscloud/depscloud/releases/download/v0.2.29/deps_0.2.29_linux_arm64.tar.gz"
        sha256 "a1e1074cf95390bcc9278c75df343159bc8bbe46f5f18feaab3bb3dc055c7cad"
      else
        url "https://github.com/depscloud/depscloud/releases/download/v0.2.29/deps_0.2.29_linux_armv7.tar.gz"
        sha256 "4854b2f761dfa133170df2846fc4ee4f61f7588212276422d3310e9fe2deda3e"
      end
    end
  end

  def install
    bin.install "deps"
  end
end
