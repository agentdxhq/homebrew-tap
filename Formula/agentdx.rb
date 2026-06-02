class Agentdx < Formula
  desc "Flight recorder for AI coding agents"
  homepage "https://agentdx.ai"
  url "https://registry.npmjs.org/@agentdx/agentdx/-/agentdx-0.1.1.tgz"
  sha256 "1cb4f60628851d69590eda0f8ea183d65ea2734e896415fb5acfe4b248fcb1fc"
  license "MIT"

  depends_on "node"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    assert_match "0.1.1", shell_output("#{bin}/agentdx --version")
  end
end
