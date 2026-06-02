function ks --description 'Switch kubectx/kubens for the current project and stage'
    if test -z "$argv[1]"
        echo "usage: ks [stage]"
        return 1
    end

    set -l stage $argv[1]

    set -l remote_url (git remote get-url origin 2>/dev/null)
    set -l project (string replace -rf '.*github\.com[:/].*/(.*?)(\.git)?$' '$1' -- "$remote_url")
    if test -z "$project"
        echo "No git remote found"
        return 1
    end

    echo "Switching to $project-$stage..."
    kubectx "gke_buda-default-"$stage"_us-east1-b_apps-"$stage
    kubens "$project-$stage"
end
