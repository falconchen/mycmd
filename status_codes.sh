#列出所有状态码名称
alias status_codes="curl --silent https://developer.mozilla.org/en-US/docs/Web/HTTP/Status | htmlq --text 'dt a code'"

#在浏览器中打开特定的状态码页面

function man-http() {
    code="$1"
    if [[ -z $code ]]; then
      echo "Usage: man-http <status code>"
      exit 0
    fi

    open -a "/Applications/Google Chrome.app" "https://developer.mozilla.org/zh-CN/docs/Web/HTTP/Status/$code"  
}
