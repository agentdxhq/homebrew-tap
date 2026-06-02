class Agentdx < Formula
  desc "Flight recorder for AI coding agents"
  homepage "https://agentdx.ai"
  url "https://registry.npmjs.org/@agentdx/agentdx/-/agentdx-0.2.1.tgz"
  sha256 "215ddf2bda55da1d0b0aa756eddb5dbb12834bed5dbb6757531d286274dfdae1"
  license "MIT"

  depends_on "node"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    assert_match "0.2.1", shell_output("#{bin}/agentdx --version")
  end
end
