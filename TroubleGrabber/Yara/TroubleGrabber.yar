rule TroubleGrabber_PWS
{
	meta:
		description = "TroubleGrabber is a credential stealer that is being spread through Discord attachments and using Discord messages to communicate stolen credentials back to the attacker"
		author = "Netskope Threat Labs"

	strings:
		$a1 = "TOKEN_STEALER_CREATOR.Properties"
		$a2 = "discordapp.com/attachments/"  nocase wide ascii

	condition:
		all of them
}

rule TroubleGrabber_Sendhookfile
{
	meta:
		description = "TroubleGrabber is a credential stealer that is being spread through Discord attachments and using Discord messages to communicate stolen credentials back to the attacker"
		author = "Netskope Threat Labs"

	strings:
		$a1 = "sendhookfile.Properties"  nocase wide ascii
		$a2 = "TokenStealer"  nocase wide ascii
		$a3 = "api/webhooks"  nocase wide ascii

	condition:
		all of them
}

rule TroubleGrabber_TokenStealer
{
	meta:
		description = "TroubleGrabber is a credential stealer that is being spread through Discord attachments and using Discord messages to communicate stolen credentials back to the attacker"
		author = "Netskope Threat Labs"

	strings:
		$a1 = "**INJECTION STARTED!**"  nocase wide ascii
		$a2 = "systeminfo | findstr"  nocase wide ascii
		$a3 = "curl -X POST -H"  nocase wide ascii

	condition:
		all of them
}