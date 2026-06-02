class Agentdx < Formula
  desc "Flight recorder for AI coding agents"
  homepage "https://agentdx.ai"
  url "https://registry.npmjs.org/@agentdx/agentdx/-/agentdx-0.1.0.tgz"
  sha256 "cc749efdf1a5f503305521615832ff4be7f3a01424c55c3eaed0f1e8a90ea0a6"
  license "MIT"

  depends_on "node"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    assert_match "0.1.0", shell_output("#{bin}/agentdx --version")
  end
end
