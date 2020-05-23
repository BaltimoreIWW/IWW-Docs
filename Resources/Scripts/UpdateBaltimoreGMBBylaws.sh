cd /var/www/IWW-Docs/BaltimoreGMB/Bylaws
git pull
cat Title.asc ArticleI.asc ArticleII.asc ArticleIII.asc ArticleIV.asc ArticleV.asc ArticleVI.asc ArticleVII.asc ArticleVIII.asc ArticleIX.asc ArticleX.asc > index.asc
asciidoctor -d book index.asc
asciidoctor-pdf -a pdf-theme=../../Resources/Styles/IWWDocs-theme.yml index.asc
mv index.pdf BaltimoreGMBBylaws.pdf
