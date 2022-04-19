class KubeSwitch < Formula

	desc "Switch between Kubernetes context & namespace using an interactive menu."
	homepage "https://github.com/null93/kube-switch"
	url "https://github.com/null93/kube-switch/releases/download/2.0.3/kube-switch-2.0.3-darwin.tar.gz"
	sha256 "0dc1a7b88e4c495d5e413a55bdab0ad1dc0bde22685425383fca21023ba127d5"
	version "2.0.3"

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
