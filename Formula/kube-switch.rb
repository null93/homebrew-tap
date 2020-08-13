class KubeSwitch < Formula

	desc "Switch between Kubernetes context & namespace using an interactive menu."
	homepage "https://github.com/null93/kube-switch"
	url "https://github.com/null93/kube-switch/releases/download/1.1.0/kube-switch"
	sha256 "03592385fb6d8350be6a6406929f5c2109cf2a32d0056016145807724ec8b027"
	version "1.1.0"

	def install
		bin.install "kube-switch"
	end

	def caveats
		"Optionally bind program to CTRL+K & ideally append to .bash_profile\n\n" +
		"    $ bind -x '\"\\C-k\":\"kube-switch\"'\n\n"
	end

end
