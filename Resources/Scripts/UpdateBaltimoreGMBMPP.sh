cd /var/www/IWW-Docs/BaltimoreGMB/MPP
git pull
cat Title.asc ITPolicies.asc > index.asc
asciidoctor -d book index.asc
sed -i '7a\<link rel="shortcut icon" type="image/ico" href="../../Resources/Images/favicon.ico"/>' index.html
asciidoctor-pdf -a pdf-theme=../Resources/Styles/IWWDocs-theme.yml index.asc
mv index.pdf BaltimoreGMBMPP.pdf
