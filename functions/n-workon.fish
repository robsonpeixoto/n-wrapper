function n-workon -a version -d "Activate a node version"
  n-deactivate

  setenv N_ACTIVE_VERSION $N_PREFIX/n/versions/node/$version/bin
  if not test -d $p;
    set -e N_ACTIVE_VERSION

    echo "node.js $version are not installed"
    echo "n $version"
    exit 1
  end

  n $version # force install
  if test $status -ne 0;
    return 1
  end

  setenv N_VERSION $version
  set -gx fish_user_paths $N_ACTIVE_VERSION $fish_user_paths
end
