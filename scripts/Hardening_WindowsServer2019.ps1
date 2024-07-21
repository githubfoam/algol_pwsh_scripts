# Configuration Definition
Configuration Hardening_WindowsServer2019 {
    param (
        [string[]]$NodeName ='localhost'
    )
  
    Import-DscResource -ModuleName 'PSDesiredStateConfiguration'
    Import-DscResource -ModuleName 'AuditPolicyDsc'
    Import-DscResource -ModuleName 'SecurityPolicyDsc'
  
    Node $NodeName {
       AccountPolicy AccountPolicies {
             Name = 'PasswordPolicies'
             Enforce_password_history = 24
         }
     }
  }
  
  # Invoke the configuration
  CIS_WindowsServer2019_v110
  
  # Apply the configuration
  Start-DscConfiguration -Path ./Hardening_WindowsServer2019 -Wait -Verbose
s  