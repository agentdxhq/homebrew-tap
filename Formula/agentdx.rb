class Agentdx < Formula
  desc "Flight recorder for AI coding agents"
  homepage "https://agentdx.ai"
  url "https://registry.npmjs.org/@agentdx/agentdx/-/agentdx-0.2.2.tgz"
  sha256 "125eaa803df77500911a0644e306d182f907fa3ba6a8e414d3d92dabedd6c8f1"
  license "MIT"

  depends_on "node"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    assert_match "0.2.2", shell_output("#{bin}/agentdx --version")
  end
end
