Get-AzureSubscription

#Install AzureRM Module
Install-Module AzureRM
http://aka.ms/webpi-azps

# To log in to Azure Resource Manager
$cred = Get-Credential -Credential Domain\User
Login-AzureRmAccount -Credential $cred

# To view all subscriptions for your account
Get-AzureRmSubscription | Select-AzureRmSubscription

# To select a default subscription for your current session.
$subscription = "NAME OF YOUR SUBSCRIPTION GOES HERE"
Get-AzureRmSubscription -SubscriptionName $subscription | Select-AzureRmSubscription