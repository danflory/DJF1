# test sync process

Commit is always needed to get changes local.

    * if new files like notes exist I have to use git outside of the t command for now, Make a todo to fix that

after a commit then you need to push

so one process is.

```bash
t sync - probably just once every computer change
t commit
t push #this one is needed because sync reports that local is ahead of remote.
```
and t sync should report all is ok

## if only changes and no new files have been made
I tryed just sync, it appears to commit the modifications to the file

sync then syas "Alread up to date" but...
push doesn't report "Nothing to do"

so I guess it is
sync
push
