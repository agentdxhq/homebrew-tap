class Agentdx < Formula
  desc "Flight recorder for AI coding agents"
  homepage "https://agentdx.ai"
  url "https://registry.npmjs.org/@agentdx/agentdx/-/agentdx-0.2.0.tgz"
  sha256 "58729c7c5b60122df3dd89c9706733c0852795d8e78b9dafa9767d2f93857ea0"
  license "MIT"

  depends_on "node"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    assert_match "0.2.0", shell_output("#{bin}/agentdx --version")
  end
end
