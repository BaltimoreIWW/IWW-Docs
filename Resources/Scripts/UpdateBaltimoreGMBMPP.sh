cd /var/www/IWW-Docs/BaltimoreGMB/MPP
git pull
cat Title.asc ITPolicies.asc CampaignsCommitteeBylaws.asc > index.asc
asciidoctor -d book index.asc
sed -i '7a\<link rel="shortcut icon" type="image/ico" href="../../Resources/Images/favicon.ico"/>\n<a href="IWWConstitution.pdf"><div class="fab"><img src="../../Resources/Images/pdf-button.png" alt="Print-Friendly PDF"></div></a>\n<link rel="stylesheet" type="text/css" href="../../Resources/Styles/IWW-Docs.css">' index.html
asciidoctor-pdf -a pdf-theme=../../Resources/Styles/BaltimoreGMB-theme.yml index.asc
mv index.pdf BaltimoreGMBMPP.pdf
