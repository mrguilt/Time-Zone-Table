# Time-Zone-Table

The goal of this was to create a table to compare the time in various time zones. Something that would look like this:

`UTC     EST     EDT     CST     CDT     IST     PHT`

`00:00   19:00   20:00   18:00   20:00   05:30   08:0`

`01:00   20:00   21:00   19:00   21:00   06:30   09:00`

`02:00   21:00   22:00   20:00   22:00   07:30   10:00`

`03:00   22:00   23:00   21:00   23:00   08:30   11:00`

`04:00   23:00   00:00   22:00   00:00   09:30   12:00`

`05:00   00:00   01:00   23:00   01:00   10:30   13:00`

`...`

Right now, there are a few versions:
* `make-time-html-table.pl` is a script written in perl to create an HTML table version. The output can then be pasted in to an HTML page.
* `make-time-table.bas` creates a simple text table. It was written in Commodore 64 basic (using the [cbmbasic](https://github.com/mist64/cbmbasic) port), just for laughs. 
