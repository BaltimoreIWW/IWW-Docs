cd ../../BaltimoreGMB/MPP
git pull
cat Title.asc ITPolicies.asc > index.asc
asciidoctor -d book index.asc
sed -i '7a\<link rel="shortcut icon" type="image/ico" href="../../Resources/Images/favicon.ico"/>' ../../BaltimoreGMB/MPP/index.html
asciidoctor-pdf index.asc
mv index.pdf BaltimoreGMBMPP.pdf