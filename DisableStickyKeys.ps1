<#
		IMPORTANT:
        ===========================================================================
        This script is provided 'as is' without any warranty. Any issues stemming 
        from use is on the user.
        ===========================================================================
		.DESCRIPTION
		Disables Sticky Keys
	#>
$DefaultRegPath = "Registry::HKEY_Users\.DEFAULT\Control Panel\Accessibility\StickyKeys"
$RegPath = "Registry::HKEY_Users\UserHive\Control Panel\Accessibility\StickyKeys"
$Profile = "C:\Users\Default"

Set-ItemProperty -Path $DefaultRegPath -Name "Flags" -Value 26
reg load HKU\UserHive "$profile\NTUSER.dat"
Set-ItemProperty -Path $RegPath -Name "Flags" -Value 26