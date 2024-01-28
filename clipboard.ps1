# A short mockup of how the clipboard action would be like.
# Sandbox by default has clipboard redirection/passthrough
# being able to launch this with Win + {1,2,3} when pinned to the taskbar is faster
# Next is to make a context menu plugin for right clicking a file, consolidate and write in C3, 
# add configurable settings/validate clipboard contains urls, etc.
$clip = Get-Clipboard
"
<Configuration>
    <AudioInput>Disable</AudioInput>
    <ProtectedClient>Enable</ProtectedClient>
    <LogonCommand>
        <Command>C:\Program Files (x86)\Microsoft\Edge\Application\msedge.exe ${clip}</Command>
    </LogonCommand>
</Configuration>
" | Out-File -FilePath $env:TEMP\runSandbox.wsb
Invoke-Item $env:TEMP\runSandbox.wsb