# yum.repos.d

Local yum repos for whatever version of Fedora. Saves a little on bandwidth, makes installs a little quicker, but it
does it a lot of space...

Only a limited subset of the repos are cached locally, specifically `releases/Everything/x86_64` and
`updates/Everything/x86_64`.

## Usage

* Sync the repos first with `sync.sh`.
* Start a web server with `start.sh`.

## Kickstart

A kickstart file is included for OS/template builds. Sure, we could use the official images but "why not roll my own
because I can?" and learn a thing or two along the way.
