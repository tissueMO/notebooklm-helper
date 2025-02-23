# NotebookLMにデータソースをいろいろ突っ込むための補助ツール

## init.sh

初期セットアップスクリプトです。  
最初に一度だけ実行してください。  

## spider.sh

Webサイトを起点URLから階層を追いながらリンク先URLを収集します。  
認証付きページは対応していません。  

## markitdown.sh

あらゆるコンテンツをMarkdownに変換します。  
ツール本家は[こちら](https://github.com/microsoft/markitdown)

## 使用例

### CakePHPのWebサイト

```bash
./spider.sh --reject-regex='^.*/(en|fr|pt|es)/.*' https://book.cakephp.org/5/ja/contents.html > cakephp5.txt

# (cakephp5.txt のURLからHTMLをすべてダウンロード)
# (ダウンロードしたHTMLをzipに固める → cakephp5.zip)

./markitdown.sh < cakephp5.zip > cakephp5.md
```
