# README

*mved* - carefully rename multiple files and directories

# Description

*mved* renames multiple files and directories in a deeply paranoid fashion.
At the slightest hint that you are going to destroy your files, it will bail
out and tell you why.

mved is freely available under the terms of the [GNU General Public
License](https://www.gnu.org/licenses/), either version 2 of the License, or
(at your option) any later version.

For more information, read the manual entry in the Documentation section.

# Examples

    mved =.c~ bak/=.c.bak

        mv a.c~ bak/a.c.bak
        mv b.c~ bak/b.c.bak
        mv c.c~ bak/c.c.bak

    mved '*.[ch]' save-=.=

        mv a.c save-a.c
        mv a.h save-a.h
        mv b.c save-b.c
        mv b.h save-b.h

    mved save-=.= =.=

        mv save-a.c a.c
        mv save-a.o a.o
        mv save-b.c b.c
        mv save-b.o b.o

    mved note= note=.txt

        mv note1 note1.txt
        mv note2 note2.txt
        mv note3 note3.txt

    mved '[0-9][0-9][0-9][0-9][0-9][0-9]*' 19=5==6=-=3==4=-=1==2==7=

        mv 191299-app.log 1999-12-19-app.log
        mv 211299-app.log 1999-12-21-app.log
        mv 251299-app.log 1999-12-25-app.log
        mv 281299-app.log 1999-12-28-app.log

    mved '{abc,def}.*' =-v2.=

        mv abc.txt abc-v2.txt
        mv def.txt def-v2.txt

# Requirements

*mved* is written in Perl and should run on any system that has *perl(1)*.
There are no dependencies on any non-standard Perl modules.

# Documentation

There is a manual entry:

[mved(1)](http://raf.org/mved/manpages/mved.1.html) - the *mved(1)* manpage

--------------------------------------------------------------------------------

    URL: http://raf.org/mved
    GIT: https://github.com/raforg/mved
    GIT: https://codeberg.org/raforg/mved
    Date: 20200625
    Author: raf <raf@raf.org>

