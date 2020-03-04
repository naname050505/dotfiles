# 未来の自分が見るページ
find ./ -type f -maxdepth 1 | sed 'p;s/aaa/bbb/' | xargs -n2 mv
