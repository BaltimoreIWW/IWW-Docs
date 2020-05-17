cd ../../BaltimoreGMB/MPP
git pull
cat Title.asc ITPolicies.asc > index.asc
asciidoctor -d book index.asc
