
# Pending

### 7: Write man (when #6 is done)

We have a stub (a pretty dumb one) for man. Need to write the real doc for everything which is implemented so far.

### 6: Use asciidoc for man (like Git does)

Writing man pages manually is very tiresome. We need to integrate a flow to generates man pages from asciidocs documents (like Git does). Examples are Git itself, https://github.com/dsavenko/agnostic, and many others.

### 5: Make push/pull/clone work

For now, `git push` doesn't push issues to the server, so subsequent `git clone` or `git fetch` in another place clones/fetches an empty ISSUES branch.

# Done

### 4: Implement 'git bug'

### 3: Implement 'git bug resolve'

### 2: Implement 'git bug new'

### 1: Design the issue model

Learn the Git internals and design the issues model so, that is complies with the requirements listed in [README.md](README.md).

If the model require any low-level commands besides the ones listed in [README.md](README.md), implement them.

