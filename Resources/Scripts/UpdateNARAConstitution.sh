cd ../../NARA
git pull
cat Title.asc Constitution/Preamble.asc Constitution/ArticleI.asc Constitution/ArticleII.asc Constitution/ArticleIII.asc Constitution/ArticleIV.asc Constitution/ArticleV.asc Constitution/ArticleVI.asc Constitution/ArticleVII.asc Constitution/ArticleVIII.asc Constitution/ArticleIX.asc Constitution/ArticleX.asc Constitution/ArticleXI.asc Constitution/ArticleXII.asc Constitution/ArticleXIII.asc Constitution/ArticleXIV.asc Bylaws/Title.asc Bylaws/ArticleI.asc  Bylaws/ArticleII.asc Bylaws/ArticleIII.asc Bylaws/ArticleIV.asc Bylaws/ArticleV.asc Bylaws/ArticleVI.asc Bylaws/ArticleVII.asc Bylaws/ArticleVIII.asc Bylaws/ArticleIX.asc Bylaws/ArticleX.asc Bylaws/ArticleXI.asc Bylaws/ArticleXII.asc Bylaws/ArticleXII.asc Bylaws/ArticleXIV.asc Bylaws/ArticleXV.asc Bylaws/ArticleXVI.asc SelectedResolutions/SaferSpacePolicy.asc SelectedResolutions/PrisonAbolition.asc SelectedResolutions/Anti-Fascism.asc SelectedResolutions/PressOfficer.asc SelectedResolutions/BiologyGender.asc SelectedResolutions/Delegates.asc SelectedResolutions/PrintingLabel.asc SelectedResolutions/Translations.asc SelectedResolutions/Expenditures.asc SelectedResolutions/OrganizingCampaigns.asc SelectedResolutions/FundingForOrganizing.asc SelectedResolutions/SpecialConventionRules.asc SelectedResolutions/OfficerLandlords.asc Appendices/IndustrialUnions.asc Appendices/Index.asc Appendices/RobertsRules.asc > Constitution/index.asc
asciidoctor -d book Constitution/index.asc
sed -i '7a\<link rel="shortcut icon" type="image/ico" href="../../Resources/Images/favicon.ico"/>' Constitution/index.html
asciidoctor-pdf Constitution/index.asc
mv index.pdf IWWConstitution.pdf