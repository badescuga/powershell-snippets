DSC Tips
=============
List of thing to know
-------------

-  need to run <code>winrm quickconfig</code> in PS before using DSC code
- to test if current configuration has drifted, use <code>Test-DscConfiguration</code>. It return <code>True</code> if everything is ok.
- to "compile" the configurations into <code>.mof</code>, you need to just enter the configuration name (see sample1.ps1, stage 2)
- to run configuration, use <code>Start-DscConfiguration YourConfigurationName -Wait -Verbose</code>
- to install not yet released packages (prefixed with an 'x', like 'xWebAdministration'), use <code>Install-Package -Name xWebAdministration -Force</code>. It will install the packages in <code>/Program Files/WindowsPowerShell/Modules</code>





You can find more info at <link>https://github.com/powershell/dscresources</link> regarding dsc resources.<br/>
A great tutorial on Azure VM DSC configuration can be found at <link>http://blogs.msdn.com/b/powershell/archive/2014/08/07/introducing-the-azure-powershell-dsc-desired-state-configuration-extension.aspx</link>

