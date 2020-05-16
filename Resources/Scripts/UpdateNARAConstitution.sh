cd ../../NARA/Constitution
git pull
cat Title.asc Preamble.asc ArticleI.asc ArticleII.asc ArticleIII.asc ArticleIV.asc ArticleV.asc ArticleVI.asc ArticleVII.asc ArticleVIII.asc ArticleIX.asc ArticleX.asc ArticleXI.asc ArticleXII.asc ArticleXIII.asc ArticleXIV.asc > index.asc
asciidoctor -d book index.asc
