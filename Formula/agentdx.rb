class Agentdx < Formula
  desc "Flight recorder for AI coding agents"
  homepage "https://agentdx.ai"
  url "https://registry.npmjs.org/@agentdx/agentdx/-/agentdx-0.1.2.tgz"
  sha256 "9f3ce09f6e63c0d1e661e1108104fb51edeafb40439f6c9dd9b6790070f2a90c"
  license "MIT"

  depends_on "node"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    assert_match "0.1.2", shell_output("#{bin}/agentdx --version")
  end
end
