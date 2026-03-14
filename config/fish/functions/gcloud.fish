# Protect gcloud command - only run when CLOUDSDK_CONFIG is set
function gcloud
    if set -q CLOUDSDK_CONFIG
        # Safe to run - CLOUDSDK_CONFIG is set
        command gcloud $argv
    else
        # CLOUDSDK_CONFIG not set - ask for confirmation
        set_color red
        echo "❌ Error: CLOUDSDK_CONFIG environment variable is not set"
        set_color normal
        echo "This helps prevent running gcloud commands with the wrong configuration."
        echo ""
        read -l -P "Do you want to continue anyway? [y/N] " confirm

        switch $confirm
            case Y y
                set_color yellow
                echo "⚠️  Running gcloud without CLOUDSDK_CONFIG set"
                set_color normal
                command gcloud $argv
            case '*'
                set_color red
                echo "Command cancelled"
                set_color normal
                return 1
        end
    end
end

# Inherit completions from the real gcloud binary so tab completion works
# (command bypasses this function and finds the binary in PATH)
set -l _gcloud_bin (command -v gcloud 2>/dev/null)
if test -n "$_gcloud_bin"
    complete -c gcloud -w $_gcloud_bin
end
