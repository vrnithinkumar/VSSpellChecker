@ECHO OFF
CLS

CD Source

SET VisualStudioVersion=15.0

..\Source\.nuget\NuGet restore "VSSpellChecker.sln"

"%ProgramFiles(x86)%\Microsoft Visual Studio\2017\Professional\MSBuild\15.0\Bin\MSBuild.exe" "VSSpellChecker.sln" /nologo /v:m /m /t:Clean;Build "/p:Configuration=Release;Platform=Any CPU"

CD ..\NuGet

..\Source\.nuget\NuGet Pack VSSpellChecker.nuspec -NoDefaultExcludes -NoPackageAnalysis -OutputDirectory ..\Deployment

CD ..\
