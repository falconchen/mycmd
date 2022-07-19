add  lines below to `~/.zshrc` or `/etc/profile`

```bash
export MYCMD=$projects/shell/mycmd

for FILE in $MYCMD/*.sh; do
		[ -e "$FILE" ] && . "$FILE"
done
unset FILE
```
