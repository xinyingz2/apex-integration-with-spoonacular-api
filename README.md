# Recipe Search Application

This application is used to search recipes through Spoonacular API. It utilizes apex REST callouts to achieve integration between Salesforce and Spoonacular API endpoints.

## Pre-requisite before deployment

1.[Make sure you have node and npm installed](https://docs.npmjs.com/downloading-and-installing-node-js-and-npm/)
2.[Make sure you have setup Salesforce CLI and SFDX](https://developer.salesforce.com/docs/atlas.en-us.sfdx_setup.meta/sfdx_setup/sfdx_setup_install_cli.htm)
3.[Make sure you have git installed](https://git-scm.com/book/en/v2/Getting-Started-Installing-Git)

## Deployment Instructions

1.Clone this repo to your local `https://github.com/xinyingz2/apex-integration-with-spoonacular-api.git`
2.Open Terminal/Command Prompt and move inside the project folder
3.Authorize a Salesforce Org `sfdx force:auth:web:login -s -a <alias>`
4.Deploy all metadata to the Org `sfdx force:source:deploy -p force-app/main/default/`
5.Assign permission set to the current user `sfdx force:user:permset:assign -n Recipe_App`
6.Open the Org `sfdx force:org:open` and open the 'Recipe Search' tab from App Launcher
7.Open 'Spoonacular' Apex Class in Developer Console and replace the api key with your own 
8.Come back to the Org and have fun searching recipes !!!

## Important Resources for Reference

- [Salesforce Extensions Documentation](https://developer.salesforce.com/tools/vscode/)
- [Salesforce CLI Setup Guide](https://developer.salesforce.com/docs/atlas.en-us.sfdx_setup.meta/sfdx_setup/sfdx_setup_intro.htm)
- [Salesforce DX Developer Guide](https://developer.salesforce.com/docs/atlas.en-us.sfdx_dev.meta/sfdx_dev/sfdx_dev_intro.htm)
- [Salesforce CLI Command Reference](https://developer.salesforce.com/docs/atlas.en-us.sfdx_cli_reference.meta/sfdx_cli_reference/cli_reference.htm)
