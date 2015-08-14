DSC Tips
=============
List of thing to know
-------------

-  need to run <code>winrm quickconfig</code> in PS before using DSC code
- to test if current configuration has drifted, use <code>Test-DscConfiguration</code>. It return <code>True</code> if everything is ok.
- to "compile" the configurations into <code>.mof</code>, you need to just enter the configuration name (see sample1.ps1, stage 2)
- to run configuration, use <code>Start-DscConfiguration YourConfigurationName -Wait -Verbose</code>