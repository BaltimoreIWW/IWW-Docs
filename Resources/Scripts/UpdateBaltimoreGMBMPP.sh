cd ../../BaltimoreGMB/MPP
git pull
cat Title.asc ITPolicies.asc > index.asc
asciidoctor -d book index.asc
sed -i '/<Title>/,/<\/Title>/d' ../../BaltimoreGMB/MPP/index.html
sed -i '7a\<title>Baltimore IWW GMB Manual of Policies and Procedures</title>\n<link rel="shortcut icon" type="image/ico" href="../../Resources/Images/favicon.ico"/>' ../../BaltimoreGMB/MPP/index.html