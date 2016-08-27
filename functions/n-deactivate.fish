function n-deactivate -a version -d "Activate a virtualenv"
    for i in (seq (count $fish_user_paths))
        if test "$fish_user_paths[$i]" = "$N_ACTIVE_VERSION"
            set -e fish_user_paths[$i]
            break
        end
    end

    set -e N_VERSION
    set -e N_ACTIVE_VERSION
end
