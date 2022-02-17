#!/bin/bash

MINIMAL_NPM_VERSION=8;
MINIMAL_VSCODE_VERSION=1.60;

echo "Checking NPM version.."
npmVersion=$(npm -version)

if (($? != 0)); then
    echo "npm is not installed"
    exit 1;
fi

npmMajorVersion=${npmVersion%%.*}
if (( npmMajorVersion < $MINIMAL_NPM_VERSION )); then
    echo ""
    echo "NPM Check Failed:";
    echo "  Current NPM version: $npmVersion";
    echo "  Minimal required version: $MINIMAL_NPM_VERSION";
    exit 1;
fi
echo "NPM is good"
echo ""


echo "Checking SFDX CLI version.."
npm -g ls sfdx-cli
if (( $? != 0 )); then
    echo ""
    echo "SFDX CLI Check Failed";
    echo ""
    echo "    You can fix it by running the following command:";
    echo "    npm i -g sfdx-cli";
    exit 1;
fi
echo "SFDX CLI is good"
echo ""


echo "Installing project Dependencies(it may take time, please wait).."
echo "npm i"
npm i
if (( $? != 0 )); then
    echo ""
    echo "Dependencies installation Failed";
    echo ""
    echo "    Ask for help!";
    exit 1;
fi
echo "Dependencies are good"
echo ""


echo "Checking VSCode.."
code --version
if (( $? != 0 )); then
    echo ""
    echo "VSCode Check Failed";
    echo ""
    echo "    Ask for help!";
    exit 1;
fi
echo "VSCode is good"
echo ""


echo "Installing necessary VSCode Extensions.."
extensions=("salesforce.salesforcedx-vscode" "redhat.vscode-xml" "dbaeumer.vscode-eslint" "esbenp.prettier-vscode" \
"financialforce.lana" "JosephAllen.apex-code-runner")
for extension in ${extensions[@]}; do
    echo ""
    echo "    code --install-extension $extension"
    code --install-extension $extension
    if (( $? != 0 )); then
        echo ""
        echo "VSCode Extension installation Failed";
        echo ""
        echo "    Ask for help!";
        exit 1;
    fi
done
echo ""
echo "VSCode Extensionts are good"
echo ""


echo "Checking DevHub Org.."
sfdx force:org:list | grep "(D)" | grep -i connected
if (( $? != 0 )); then
    echo ""
    echo "DevHub Check Failed";
    echo ""
    echo "    Devhub is not configured";
    echo "    To fix, please follow: https://trailhead.salesforce.com/content/learn/modules/sfdx_app_dev/sfdx_app_dev_setup_dx";
    exit 1;
fi
echo "DevHub is good"
echo ""


echo "Creating Scratch Org for my practice(it may take a while, please wait).."
echo "sfdx force:org:create -f config/project-scratch-def.json -d 1 -a practice -s"
sfdx force:org:create -f config/project-scratch-def.json -d 30 -a practice -s
if (( $? != 0 )); then
    echo ""
    echo "Scratch Org creation Failed";
    echo ""
    echo "    To see potential issues run the following command(replace <devhub> with your DevHub username):";
    echo "    sfdx force:limits:api:display -u <devhub> | grep -i scratch";
    echo "    Ask for help if it does not help!";
    exit 1;
fi
echo "Scratch Org is good"
echo ""


echo "Uploading project to the Scratch Org.."
echo "sfdx force:source:push"
sfdx force:source:push
if (( $? != 0 )); then
    echo ""
    echo "Project Upload has Failed";
    exit 1;
fi
echo "Project upload is good"
echo ""

echo "All Pre-Requisites have passed! Congratulations!"
echo ""
echo "I will open your Scratch Org for you (just in case)"
echo "sfdx force:org:open"
sfdx force:org:open && echo "Done!"