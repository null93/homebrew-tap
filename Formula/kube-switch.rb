class KubeSwitch < Formula

	desc "Switch between Kubernetes context & namespace using an interactive menu."
	homepage "https://github.com/null93/kube-switch"
	url "https://github.com/null93/kube-switch/releases/download/2.0.1/kube-switch-2.0.1-darwin.tar.gz"
	sha256 "4faabe3902cce0476f90f7b28a6aba574156ab6f5ff9738ac34a6debc6ed5b2f"
	version "2.0.1"

	def install
		bin.install "kube-switch_darwin_amd64" => "kube-switch"
	end

	test do
		system "#{bin}/kube-switch", "-v"
	end

	def caveats
		"Optionally bind program to CTRL+K & ideally append to .bash_profile\n\n" +
		"    $ bind -x '\"\\C-k\":\"kube-switch\"'\n" +
		"    $ bind -x '\"\\C-n\":\"kube-switch -c\"'\n\n"
	end

end
