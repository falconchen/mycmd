add  lines below to `~/.zshrc` or `/etc/profile`

```bash
export MYCMD=$projects/shell/mycmd

for FILE in $MYCMD/*.sh; do
		[ -e "$FILE" ] && . "$FILE"
done
unset FILE
```

http status code query

```bash
#在chrome 打开 308状态码的Mozilla开发者页面(函数）
man-http 308

#列出所有状态码(别名）
status_codes

```
