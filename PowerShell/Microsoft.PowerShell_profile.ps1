& 'C:\Program Files (x86)\oh-my-posh\bin\oh-my-posh.exe' init pwsh --config 'C:\Program Files (x86)\oh-my-posh\themes\pure.omp.json' | Invoke-Expression
#oh-my-posh init pwsh --config 'C:\Program Files (x86)\oh-my-posh\themes\pure.omp.json' | Invoke-Expression
import-module PSReadline
set-psreadlineoption -editmode windows
set-psreadlineoption -predictionsource history
set-psreadlineoption -predictionviewstyle listview
#set-psreadlineoption -predictionviewstyle inlineview
#set-psreadlinekeyhandler -key Tab -function Complete
#set-psreadlinekeyhandler -key UpArrow -Function Historysearchbackward
#set-psreadlinekeyhandler -Key DownArrow -Function Historysearchforward
#Clear-Host

#import-module '\\adu.dcn\ilcp\DEMData\UserProfiles\AlecMcClure\Documents\PowerShell\Modules\GetNADuser\Get-NADuser.psm1'
import-module '\\adu.dcn\ilcp\DEMData\UserProfiles\AlecMcClure\Documents\PowerShell\Modules\UpdateYubikey\Update-Yubikey.psm1'
Import-Module '\\adu.dcn\ilcp\DEMData\UserProfiles\AlecMcClure\Documents\PowerShell\Modules\SearchIPAddress\Find-IPAddress.psm1'

Function edit-alacritty { nvim 'C:\Users\AlecMcClure\AppData\Roaming\alacritty\alacritty.toml'}
Function edit-espanso { nvim 'C:\Users\AlecMcClure\AppData\Roaming\espanso\match\base.yml'}
Function edit-profile { nvim $PROFILE }
Function edit-neovim { nvim 'C:\Users\AlecMcClure\AppData\Local\nvim\init.lua'}

set-alias -Name n -Value nvim
set-alias -Name ranger -Value lf
set-alias -Name ncrit -Value edit-alacritty
set-alias -Name nesp -Value edit-espanso
set-alias -Name npro -Value edit-profile
set-alias -Name nconf -Value edit-neovim
set-alias -Name c -Value clear
set-alias -Name l -Value ls
set-alias -Name .. -Value cd..

set-location '\\adu.dcn\ilcp\DEMData\UserProfiles\AlecMcClure\Documents'

$cert = Get-ChildItem Cert:\CurrentUser\My -CodeSigningCert

# SIG # Begin signature block
# MIIFoQYJKoZIhvcNAQcCoIIFkjCCBY4CAQExDzANBglghkgBZQMEAgEFADB5Bgor
# BgEEAYI3AgEEoGswaTA0BgorBgEEAYI3AgEeMCYCAwEAAAQQH8w7YFlLCE63JNLG
# KX7zUQIBAAIBAAIBAAIBAAIBADAxMA0GCWCGSAFlAwQCAQUABCC3xRqyr+bQW9iK
# mHqmJAOZ4DWA104warPT/TBD/o/ndaCCAxIwggMOMIIB9qADAgECAhA8+VJ7GPiT
# kEd/2kCgwxLPMA0GCSqGSIb3DQEBCwUAMB8xHTAbBgNVBAMMFEFsZWNNY0NsdXJl
# Q29kZVNpZ24xMB4XDTI1MDYyNTE0MjA0MloXDTMwMDYyNTE0MzAzOFowHzEdMBsG
# A1UEAwwUQWxlY01jQ2x1cmVDb2RlU2lnbjEwggEiMA0GCSqGSIb3DQEBAQUAA4IB
# DwAwggEKAoIBAQC0wUWydx0yYU05w+vMZUFHBkND+i5wI6M1rdF17sr433+VW+js
# 9NeKxHjHv1sUevyAzMicFBSfYOc7a4Eq3VgUXjU8PIBZtBzZazdcJ19eSZsLkb79
# Tr9pU2+I6pY/JWrfJKWaEAhfudwCX4PB5WWv0rt2wkuTsSQinnPwLDM7Mmt34jFv
# EvFpMySErWu68MWln6I2Uv0VJ19FKPXNJz9JR53ANHAF4O45u7lvjEYqOqQwxg/f
# 0vYkLxKAz2vzKoyfGT9fJ1qxgDW8pek8nLkL3sgnkdvaaFwoUNK9g7wrFG+wuUlR
# exF0tXRY1VEOzcDaQSyF+bTfdzbvn6WQllrpAgMBAAGjRjBEMA4GA1UdDwEB/wQE
# AwIHgDATBgNVHSUEDDAKBggrBgEFBQcDAzAdBgNVHQ4EFgQUsakkKTrAgJehiVF0
# l85z+1P5UVEwDQYJKoZIhvcNAQELBQADggEBAHuyf1T+4KDyJZN4RxZONvq2F8XS
# t4yxMybNDjnLVHFL4FU2eF62qhNihGHH7UeWPVgMtd6cfEJ5LPwVpbqhOdZY1NXX
# LLyS8TaOn31T3MqE39dcxayprp8kkOJp1hYsCyOv10JPOWZOt5Jbc9Wofx6kaAPe
# G4iJu8skXRNYh+4SaQCWDHfLp9Fd5q1cH2pCQtdy4oIQ7EIujKADe62eqJJ3+WIJ
# RTFuIK+4jlzayGrTHZ4hX1xDeKnDV7dbUMd7uzBHRvZFKmadAbmq38qDWAHff4f9
# hu3CaHqj9ypsvTaKpKsw6bXeaCtO6DjUsQNwCdZTA+KkU4WUjd3o1byzPn4xggHl
# MIIB4QIBATAzMB8xHTAbBgNVBAMMFEFsZWNNY0NsdXJlQ29kZVNpZ24xAhA8+VJ7
# GPiTkEd/2kCgwxLPMA0GCWCGSAFlAwQCAQUAoIGEMBgGCisGAQQBgjcCAQwxCjAI
# oAKAAKECgAAwGQYJKoZIhvcNAQkDMQwGCisGAQQBgjcCAQQwHAYKKwYBBAGCNwIB
# CzEOMAwGCisGAQQBgjcCARUwLwYJKoZIhvcNAQkEMSIEIGTpLbDmVl5n814EdLLT
# I5rB9wiKaWda8+HZsxLTPkUJMA0GCSqGSIb3DQEBAQUABIIBAJKe2x5XufygPgZZ
# Ffrzbbifr2BP7+v0hH0kXOB9gnUTIyXnhEJCKZ9FJl6BpZSYOGMd7Jetz82/zWa7
# FQKXItR/6tqTwSaAvL6NwfvQQn2RCLUwwcAZSkC3oUn/0tufNIcxpESuqn4Rqdxz
# owo4NISuEz/P3psMBPn539J2edl8G43CEtvnMcvtdhptkHNwg8y57w8ZlNjt09SP
# 3K6zP4xkiAGTvdZjqGoSRoqIU5ZT5y7sZszYab/n0zlvPT6kVSoNa/WrnExUC2sf
# /Nm6zvFTk+J1aR0jcIjh5/5oyqfbyyxu3EAzdYtITPyKktE26kbIeod3l+yg9I/w
# xvQpu4Q=
# SIG # End signature block
