Formats the given timestamp according to the given format.	
The format string is used as a template to format the date and
is copied character by character except for the following special characters,
which are replaced by the corresponding value.

* %w - abbreviated weekday (Mon, Tue, ...)
* %W - full weekday (Monday, Tuesday, ...)
* %b - abbreviated month (Jan, Feb, ...)
* %B - full month (January, February, ...)
* %d - zero-padded day of month (01 .. 31)
* %e - day of month (1 .. 31)
* %f - space-padded day of month ( 1 .. 31)
* %m - zero-padded month (01 .. 12)
* %n - month (1 .. 12)
* %o - space-padded month ( 1 .. 12)
* %y - year without century (70)
* %Y - year with century (1970)
* %H - hour (00 .. 23)
* %h - hour (00 .. 12)
* %a - am/pm
* %A - AM/PM
* %M - minute (00 .. 59)
* %S - second (00 .. 59)
* %s - seconds and microseconds (equivalent to %S.%F)
* %i - millisecond (000 .. 999)
* %c - centisecond (0 .. 9)
* %F - fractional seconds/microseconds (000000 - 999999)
* %z - time zone differential in ISO 8601 format (Z or +NN.NN)
* %Z - time zone differential in RFC format (GMT or +NNNN)
* %% - percent sign
