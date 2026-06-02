function port-clean --description 'Kill the process listening on the given port'
    if test -z "$argv[1]"
        echo "usage: port-clean [port]"
        return 1
    end

    set -l pids (lsof -t -i:$argv[1] 2>/dev/null)
    if test -n "$pids"
        kill $pids
    end
end
