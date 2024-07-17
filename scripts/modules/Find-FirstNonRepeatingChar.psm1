function Find-FirstNonRepeatingChar {
    param (
        [string]$str
    )

    if ([string]::IsNullOrEmpty($str)) {
        throw "String must not be null or empty"
    }

    $charCountMap = @{}

    # Count the occurrences of each character
    foreach ($ch in $str.ToCharArray()) {
        if ($charCountMap.ContainsKey($ch)) {
            $charCountMap[$ch] += 1
        } else {
            $charCountMap[$ch] = 1
        }
    }

    # Find the first character with a count of 1
    foreach ($ch in $str.ToCharArray()) {
        if ($charCountMap[$ch] -eq 1) {
            return $ch
        }
    }

    # If no non-repeating character is found
    throw "No non-repeating character found"
}

Export-ModuleMember -Function Find-FirstNonRepeatingChar