# A tool to grab a copy of a directory from an Slackware Linux mirror.

**bob_source** grabs a copy of an entire directory from an official
Slackware Linux mirror.

# Usage

As root:

`bob_source extra/source/brltty`

This would create the following directory and content:

```
/usr/ports/local/
`-- extra
    `-- source
        `-- brltty
            |-- brltty-4.2.tar.xz
            |-- brltty.SlackBuild
            `-- slack-desc

3 directories, 3 files
```

It's content is from:

ftp://ftp.osuosl.org/pub/slackware/slackware-current/extra/source/brltty

The Slackware Linux mirror would be selected from your `slackpkg`
configuration file, `/etc/slackpkg/mirrors`. In my case i'm using
http://slackware.osuosl.org/slackware-current/ as mirror.

# Contact me

* hba.nihilismus@gmail.com
* http://twitter.com/nihilipster
