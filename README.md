
# Distributed issue tracker

Git-based distributed issue tracker. With it you can use Git repository for storing issues (bugs, tasks, improvements, etc). The issues are operated in a manner typical to Git and other DVCSs. I.e. when a project is fetched locally, the issues storage is fetched as well. The user then may operate locally with their copy of the issue storage, then push the updated issues.

An issue (or *bug*) has the following attributes:

1. Hash - unique identifier of the issue;
2. Summary - a short definitive text;
3. Description - a longer text which describes the issue in detail;
4. Status - either *Open* or *Resolved*.

More attributes (like assignee, label, other statuses, etc) may be added in the future. All dates (the date of opening and closing, as well as the dates of all changes to the issue) are also tracked. User information (who created/change/resolved the issue) is also tracked.

Issues are not tied to any particular branch.

## Commands

#### New issue

`git bug new` opens a text editor (like it happens with `git commit`). If the user closes the editor without any text, nothing happens. If user provides some text, the first line of the text will be the new issue's summary. The second and all subsequent lines will be the description. In this case, the new issue is created and its hash is printed.

`git bug new -m "Text"` works like `git commit -m`, i.e. accepts the text from the command line, without opening editors.

#### Show issue

`git bug <hash>` prints issue information: hash, summary, description and all other attributes listed in [README.md](README.md) in a human-readable, yet parseable manner.

#### Edit issue

`git bug edit <hash>` opens a text editor (like it happens with `git commit`) with the issue summary as the first line and it's description as the rest of the text. If the user closes the editor without changing the text or saving, nothing happens. If user provides some changes, the issue is edited accordingly.

#### Resolve issue

`git bug resolve <hash>` resolves the issue, i.e. changes its status from *Open* to *Resolved*. If the issue already resolved, it prints 'Already resolved' and exits with a non-zero exit code.

#### List issues

`git bug` lists all **open** issues in the following format:

    <hash 1>     <summary 1>
    <hash 2>     <summary 2>
    ...
    <hash N>     <summary N>

`git bug -a` lists all issues (open and resolved).

`git bug --resolved` lists all resolved issues.

`git bug --open` lists all open issues (the same as `git bug` without parameters).

#### Fetch and push issues

Standard Git procedures for fetching and pushing works for issues as well. E.g. `git fetch` fetches issues from the remote, and `git push` pushes them to the remote. 

## Resources

* Current tasks are available in the [TODO.md](TODO.md) file.
