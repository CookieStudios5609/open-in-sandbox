# open-in-sandbox
A shortcut for useful actions in Windows Sandbox

## Purpose

Windows Sandbox is strange.
For those who would benefit most, it's unknown, not advertised, locked behind Pro, and hidden in the optional features menu. 
For those who use VMs daily, you're probably using full Hyper-V, or a type-2, which gets disabled when Sandbox is enabled.
But if you just need disposable, performant guests, this may be of use.

## Features

- Open a link in Edge immediately from the clipboard (clean browser on demand)
- Open a path immediately from the clipboard (clean execution environment on demand)
- Not Implemented: Run ninite/winget on startup (clean tools on demand)
- Not Implemented: Open link in checkshorturl
- Not Implemented: curl from url and upload/send hash to virustotal (binary analysis on demand)
- Not implemented: Open link with proxy or Wireguard tunnel active (clean session/fingerprint on demand)

## Installation

1. Clone the repository
2. Enable Powershell script execution
3. Pin to the taskbar

## Usage

With the desired URI in your clipboard, hit `Win + {taskbar position}` 