$Apps = "A278AB0D.MarchofEmpires",
        "89006A2E.AutodeskSketchBook",
        "KeeperSecurityInc.Keeper",
        "king.com.BubbleWitch3Saga",
        "king.com.CandyCrushSodaSaga",
        "Microsoft.Advertising.JavaScript",
        "Microsoft.Advertising.Xaml",
        "Microsoft.BingNews",
        "Microsoft.BingWeather",
        "Microsoft.DesktopAppInstaller",
        "Microsoft.GetHelp",
        "Microsoft.Getstarted",
        "Microsoft.Messaging",
        "Microsoft.Microsoft3DViewer",
        "Microsoft.MicrosoftOfficeHub",
        "Microsoft.MicrosoftSolitaireCollection",
        "Microsoft.MicrosoftStickyNotes",
        "Microsoft.MinecraftUWP",
        "Microsoft.MixedReality.Portal"
        "Microsoft.Office.OneNote",
        "Microsoft.OneConnect",
        "Microsoft.People",
        "Microsoft.Print3D",
        "Microsoft.SkypeApp",
        "Microsoft.StorePurchaseApp",
        "Microsoft.Wallet",
        "Microsoft.Windows.Photos",
        "microsoft.windowscommunicationsapps",
        "Microsoft.WindowsFeedbackHub",
        "Microsoft.WindowsMaps",
        "Microsoft.Xbox.TCUI",
        "Microsoft.XboxApp",
        "Microsoft.XboxGameCallableUI",
        "Microsoft.XboxGameOverlay",
        "Microsoft.XboxGamingOverlay"
        "Microsoft.XboxIdentityProvider",
        "Microsoft.XboxSpeechToTextOverlay",
        "Microsoft.ZuneMusic",
        "Microsoft.ZuneVideo",
        "TreeCardGames.SpiderSolitaireCollectionFree",
        "Windows.ContactSupport",
        "XINGAG.XING"

ForEach ($App in $Apps)
{
    $PackageIdentifier = (Get-AppxPackage $App).PackageFullName
    If ($PackageIdentifier) {
        Remove-AppxPackage -Package $PackageIdentifier
        Write-Host "$App uninstalled"
    }
    Else {
        Write-Host "Cannot remove $App"
    }
}
