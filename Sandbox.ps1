# args[0] doesn't work with powershell -File, as "%V" forces the path to be one argument.

if ($args.Count) {
"
    <Configuration>
        <AudioInput>Disable</AudioInput>
        <ProtectedClient>Enable</ProtectedClient>
        <MappedFolders>
            <MappedFolder>
                <HostFolder>${args}</HostFolder>
            </MappedFolder>
        </MappedFolders>
        <LogonCommand>
            <Command>explorer C:\Users\WDAGUtilityAccount\Desktop\</Command>
        </LogonCommand>
    </Configuration>
" | Out-File -FilePath $env:TEMP\runSandbox.wsb
Invoke-Item $env:TEMP\runSandbox.wsb
}