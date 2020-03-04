# 未来の自分が見るページ
* ファイル名一括置換
  * find ./ -type f -maxdepth 1 | sed 'p;s/aaa/bbb/' | xargs -n2 mv
* ファイル名に空白は入れないで
  * find . -name "* *" | rename 's/ /_/g'

