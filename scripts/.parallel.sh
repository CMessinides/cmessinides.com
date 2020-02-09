function parallel {
	for cmd in "$@"; do {
		$cmd & pid=$!
		ALL_PIDS+=" $pid"
	} done

	trap "kill $ALL_PIDS" SIGINT

	wait $ALL_PIDS
}
