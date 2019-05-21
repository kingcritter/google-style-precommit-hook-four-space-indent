Forked from [the original](https://github.com/maltzj/google-style-precommit-hook) because we needed to change the options. 

A handy [pre-commit](http://pre-commit.com/) hook which will run Google's java
code style formatter for you on your code!

Usage:

```
repos:
- repo: https://github.com/kingcritter/google-style-precommit-hook-four-space-indent
  rev: 7ac03e6cf75cdd9a1fba22989c59de68b01fe6b8
    hooks:
      - id: google-style-java
```

*Note*: this file stores Google's code style formatter jar in a `.cache/`
directory so that it doesn't need to be re-downloaded each time.  You will
probably want to add `.cache/` to the `.gitignore` file of the project which
uses this hook.
