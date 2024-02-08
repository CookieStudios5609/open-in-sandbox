# Sandbox by default has clipboard redirection/passthrough
# being able to launch this with Win + {1,2,3} when pinned to the taskbar is faster

# context menu plugin/sharing target next
# add Virustotal/hybridanalysis, checkshurturl, urlscan, and others

$clip = Get-Clipboard

$launchEdge = "C:\Program Files (x86)\Microsoft\Edge\Application\msedge.exe ${clip}"
$launchExplore = "explorer C:\Users\WDAGUtilityAccount\Desktop\"

if ($clip -like "*http*")
    {$launchCommand = $launchEdge}
elseif ($clip -like "*\*")  #  ^([A-Z]:\\)|(\\\\)
    {
    $launchCommand = $launchExplore
    $mappedHost = "<MappedFolders>
        <MappedFolder>
            <HostFolder>$clip</HostFolder>
        </MappedFolder>
    </MappedFolders>"
    write-output $mappedHost
    }

"
<Configuration>
    <AudioInput>Disable</AudioInput>
    <ProtectedClient>Enable</ProtectedClient>
    ${mappedHost}
    <LogonCommand>
        <Command>${launchCommand}</Command>
    </LogonCommand>
</Configuration>
" | Out-File -FilePath $env:TEMP\runSandbox.wsb
Invoke-Item $env:TEMP\runSandbox.wsb