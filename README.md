# git-profile

A utility to quickly change your name and email in Git


## Intro

Have you ever committed in your business repository with your personal email?

Do you use a shared computer with only one user
and have to keep changing Git config to your name and email?

Yes? So this utility is for you.

You will be able to define multiple "profiles"
which map to a name and email.
You can switch between them in one command
and manage easily.

All profiles are stored in the global Git config.

Note that the profile only matters when committing
(and amending, merging..)
but you can push to a remote with any profile in use.


## Install

Use `make` to build the man page.
(requires [help2man])

Then you can run `sudo make install`
to install in the whole system.

Alternatively, you can install in your home with
`make install PREFIX=~/.local`

If you don't want the man page, use `make install-bin` instead.
Or just copy `git-profile` into your `PATH`


## Usage

Git recognizes custom commands starting with `git-`,
so you can use `git profile [arguments..]`

Running the utility with no arguments tells the current profile
and checks if something is overriding it.

See details about each command with `git profile --help`
(if you did not install the manual, use `-h`)


[help2man]: https://www.gnu.org/software/help2man/
