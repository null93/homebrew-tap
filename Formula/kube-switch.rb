class KubeSwitch < Formula

	desc "Switch between Kubernetes context & namespace using an interactive menu."
	homepage "https://github.com/null93/kube-switch"
	url "https://github.com/null93/kube-switch/releases/download/2.1.1/kube-switch-2.1.1-darwin.tar.gz"
	sha256 "bb34d2903028a58f0b640cad15d12497e96d1ae28c289c82aaed4dda089aa94f"
	version "2.1.1"

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
