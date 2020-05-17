cd ../../BaltimoreGMB/Bylaws
git pull
cat Title.asc ArticleI.asc ArticleII.asc ArticleIII.asc ArticleIV.asc ArticleV.asc ArticleVI.asc ArticleVII.asc ArticleVIII.asc ArticleIX.asc ArticleX.asc > index.asc
asciidoctor -d book index.asc
sed -i '/<Title>/,/<\/Title>/d' ../../BaltimoreGMB/Bylaws/index.html
sed -i '7a\<title>Baltimore IWW GMB Bylaws</title>\n<link rel="shortcut icon" type="image/ico" href="../../Resources/Images/favicon.ico"/>' ../../BaltimoreGMB/Bylaws/index.html