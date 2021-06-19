$msbuild2019 = 'C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\MSBuild\Current\Bin\MSBuild.exe'
$msbuild2022 = 'C:\Program Files\Microsoft Visual Studio\2022\Preview\MSBuild\Current\Bin\MSBuild.exe'

# Post-build Code Analysis (FxCopCmd.exe) has been deprecated in favor of FxCop analyzers

# VS2019 with warnings
& $msbuild2019 .\netfx48\netfx48.csproj /t:ReBuild /p:RunCodeAnalysis=true

# VS2022 with an error: FxCopCmd.exe is no longer available.
& $msbuild2022 .\netfx48\netfx48.csproj /t:ReBuild /p:RunCodeAnalysis=true
