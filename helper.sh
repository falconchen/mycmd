# deloldfiles /path/to/dir 5

function deloldfiles() {
	find $1 -type f -mtime +$2 -delete
}
