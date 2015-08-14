#note: need to run "winrm quickconfig" in PS before starting this script

#Stage 1: DSC
Configuration Webserver
{
    User websiteUser
        {
            Ensure = "Present"
            UserName = "badescuga"
            DependsOn = "[WindowsFeature]IIS"
        }

    #install IIS
    WindowsFeature IIS
    {
        Ensure = "Present"
        Name = "Web-Server"
    }
      
    #Install ASP.NET 4.5 
    WindowsFeature ASP 
    { 
      Ensure = “Present” 
      Name = “Web-Asp-Net45” 
    } 
}

#Stage 2: Generate MOF Files ("compile" the schema defined)

Webserver

#Stage 3 (run the generated mof files)

Start-DscConfiguration Webserver -Wait -Verbose

"Testing if configuration is on track (not drifted):"

Test-DscConfiguration #returns true if configurations match 
