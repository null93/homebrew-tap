class KubeSwitch < Formula

	desc "Switch between Kubernetes context & namespace using an interactive menu."
	homepage "https://github.com/null93/kube-switch"
	url "https://github.com/null93/kube-switch/releases/download/2.1.0/kube-switch-2.1.0-darwin.tar.gz"
	sha256 "ac4d22b417f69e5a04c9589d5f72b8cb208e0cbd8ac2bcf808425bf150bd5d28"
	version "2.1.0"

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
