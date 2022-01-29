#!/bin/bash

MINIMAL_NPM_VERSION=8;
MINIMAL_VSCODE_VERSION=1.60;

echo "Checking NPM version.."
npmVersion=$(npm -version)

if (($? != 0)); then
    echo "npm is not installed! Have you installed Node JS as per the Must Read section?"
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
sfdx --version
if (( $? != 0 )); then
    echo ""
    echo "SFDX CLI Check Failed! Have you installed SFDX CLI as per the Must Read section?"
    echo ""
    echo "    You can fix it by running the following command:";
    echo "    npm i -g sfdx-cli";
    exit 1;
fi
echo "SFDX CLI is good"
echo ""


echo "Checking Java.."
java -version
if (( $? != 0 )); then
    echo ""
    echo "Java Check Failed! Have you installed Java as per the Must Read section?";
    echo ""
    echo "    Ask for help!";
    exit 1;
fi
echo "Java is good"
echo ""


echo "Checking VSCode.."
code --version
if (( $? != 0 )); then
    echo ""
    echo "VSCode Check Failed! Have you installed VS Code as per the Must Read section?";
    echo ""
    echo "    Ask for help!";
    exit 1;
fi
echo "VSCode is good"
echo ""


echo "Installing necessary VSCode Extensions.."
extensions=("salesforce.salesforcedx-vscode" "redhat.vscode-xml" "dbaeumer.vscode-eslint" "esbenp.prettier-vscode" \
"financialforce.lana" "JosephAllen.apex-code-runner" "ms-vsliveshare.vsliveshare")
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
    echo "DevHub Check Failed! Have you connected DevHub Org as per the Must Read section?";
    echo ""
    echo "    Devhub is not configured";
    echo "    To fix, please follow: https://trailhead.salesforce.com/content/learn/modules/sfdx_app_dev/sfdx_app_dev_setup_dx";
    exit 1;
fi
echo "DevHub is good"
echo ""


echo "All Checks have passed! Congratulations!"
echo ""
