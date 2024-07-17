# Import the module
Import-Module -Name ./scripts/modules/Find-FirstNonRepeatingChar.psm1

# Example usage
try {
    $str = "stwiss"
    $result = Find-FirstNonRepeatingChar -str $str
    Write-Output "The first non-repeating character is: $result"
} catch {
    Write-Output $_.Exception.Message
}