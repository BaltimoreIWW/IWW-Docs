cd ../../NARA/Constitution
git pull
cat Title.asc Preamble.asc ArticleI.asc ArticleII.asc ArticleIII.asc ArticleIV.asc ArticleV.asc ArticleVI.asc ArticleVII.asc ArticleVIII.asc ArticleIX.asc ArticleX.asc ArticleXI.asc ArticleXII.asc ArticleXIII.asc ArticleXIV.asc > index.asc
asciidoctor -d book index.asc
sed -i '7a\<link rel="shortcut icon" type="image/ico" href="../../Resources/Images/favicon.ico"/>' ../../NARA/Constitution/index.html
asciidoctor-pdf index.asc
mv index.pdf IWWConstitution.pdf