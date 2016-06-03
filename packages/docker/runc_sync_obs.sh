set -ex

cd $(dirname $0)

. ../../package_sync_functions.sh

runc_git_version() {
	echo $(cat VERSION)
}

package_sync_build_service https://api.opensuse.org Virtualization:containers:experimental runc https://github.com/opencontainers/runc.git runc_git_version

exit 0
