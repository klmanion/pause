# pause #
pause — Pauses or unpauses a process (depending on state) by name.

Use is simple, just type <code>pause \<name of process(es)\></code>
and it will either send a SIGSTOP or SIGCONT signal,
depending on whether the process is running or stopped, respectively.
This allows you to easily pause and then resume the same process with the same command,
without bothering to check state yourself.

## Installation ##

type <code>./install.sh</code> into your shell, and pause
will automatically be added to your PATH as "pause" in /usr/local/bin/, and
the manpage for pause will be installed in /usr/share/man/man1/.

If install.sh does not run, make sure your shell is in the same directory as the install script, and
try typing <code>chmod +x ./install.sh</code> then rerunning the script.

After installation pause can be used anywhere like any other command.
