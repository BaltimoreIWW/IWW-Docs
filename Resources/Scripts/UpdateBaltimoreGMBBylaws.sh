cd /var/www/IWW-Docs/BaltimoreGMB/Bylaws
git pull
cat Title.asc ArticleI.asc ArticleII.asc ArticleIII.asc ArticleIV.asc ArticleV.asc ArticleVI.asc ArticleVII.asc ArticleVIII.asc ArticleIX.asc ArticleX.asc > index.asc
asciidoctor -d book index.asc
sed -i '7a\<link rel="shortcut icon" type="image/ico" href="../../Resources/Images/favicon.ico"/>\n<a href="IWWConstitution.pdf"><div class="fab"><img src="../../Resources/Images/pdf-button.png" alt="Print-Friendly PDF"></div></a>\n<link rel="stylesheet" type="text/css" href="../../Resources/Styles/IWW-Docs.css">'' index.html
asciidoctor-pdf -a pdf-theme=../../Resources/Styles/BaltimoreGMB-theme.yml index.asc
mv index.pdf BaltimoreGMBBylaws.pdf
