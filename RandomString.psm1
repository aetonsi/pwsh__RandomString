
# https://morgantechspace.com/2016/03/how-to-generate-random-password-using-powershell.html
function Get-RandomString {
    Param(
        [Parameter(Mandatory = $true)] [int] $length,
        [Parameter(Mandatory = $false)] [string] $mask = 'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789!"#$%&''()*+,-./:;<=>?@[\]^_`{|}~'
    )

    $chars = $mask.ToCharArray()
    $str = ""
    1..$length | ForEach-Object { $str += $chars | Get-Random }
    return $str
}


Export-ModuleMember -Function Get-RandomString