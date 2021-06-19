$msbuild2019 = 'C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\MSBuild\Current\Bin\MSBuild.exe'
$msbuild2022 = 'C:\Program Files\Microsoft Visual Studio\2022\Preview\MSBuild\Current\Bin\MSBuild.exe'


# Build with no error
# https://docs.microsoft.com/ja-jp/visualstudio/code-quality/migrate-from-fxcop-analyzers-to-net-analyzers?view=vs-2022

& $msbuild2019 .\netfx48\netfx48.csproj /t:ReBuild /p:AnalysisMode=AllEnabledByDefault
& $msbuild2022 .\netfx48\netfx48.csproj /t:ReBuild /p:AnalysisMode=AllEnabledByDefault
