class KubeSwitch < Formula

	desc "Switch between Kubernetes context & namespace using an interactive menu."
	homepage "https://github.com/null93/kube-switch"
	url "https://github.com/null93/kube-switch/releases/download/2.0.2/kube-switch-2.0.2-darwin.tar.gz"
	sha256 "85b7c119025023e7f6d67ae03cddb3c68033ca8f44ed93572146fad2a11722c2"
	version "2.0.2"

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
