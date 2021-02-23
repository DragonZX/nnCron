# nnCron plugins

* **File:** plugins/complist.spf

<hr>

* **File:** plugins/mailslot.spf

<hr>

* **File:** plugins/process.spf

<hr>

* **File:** plugins/procwin.spf

**Usage:**
PROC-CLOSE: procname.exe
PROC-CLOSE: xxxx.exe
e.g. PROC-CLOSE: winword.exe
<hr>

* **File:** plugins/test.spf 

<hr>

* **File:** plugins/time.spf)
*Author:* Nicholas Nemtsev
*Description:* Time operations.
*Words:* FILE-TIME:, FILE-ATIME:, FILE-WTIME:, CUR-FTIME, FTIME-
**Usage:**
    FILE-TIME: filename ( -- d )  d - is a 64-bit value representing the number of 100-nanosecond intervals since January 1, 1601

**Example:**
    CUR-FTIME FILE-TIME: xxx.txt FTIME- 300 > \ curtime-filetime>300sec
    IF FILE-DELETE: xxx.txt THEN
<hr>

* **File:** plugins/timesync.spf

**Author:** Nicholas Nemtsev

**Description:** Time synchronization by Time Protocol

**Usage:**
TP-SYNC: server-name
user-value variables (use these after TP-SYNC):
TP-SYNC-RESULT - 0 if ok, otherwise winsock error code
TP-SYNC-DELAY  - delay of server respond in ms

**Example:**
    #( time_adjust
    OnceADay
    Rule: ONLINE?
    Action:
    TP-SYNC: time.nist.gov
    TP-SYNC-RESULT 0<>
    IF CLEAR-ONCE 
    MSG: "Can't synchronize time"
    ELSE
    TMSG: "Time is synchronized." 10
    THEN
    )#
### Time server list
time.nist.gov

clock.psu.edu

finch.cc.ukans.edu

ntp.css.gov

ntp.lth.se

ntp.maths.tcd.ie

ntp0.cornell.edu

ntp-1.ece.cmu.edu

ntp-2.ece.cmu.edu

ntp2a.mcc.ac.uk

Rolex.PeachNet.EDU

salmon.maths.tcd.ie

sundial.columbia.edu

time.nrc.ca

timelord.uregina.ca

timex.cs.columbia.edu

Timex.PeachNet.EDU

<hr>

* **File:** plugins/win.spf

<hr>

* **File:** plugins/win2tray.spf
**Author:** Nicholas Nemtsev
**Description:** Place windows to system tray
**Usage:**
WIN-TO-TRAY: "pattern"

<hr>

* **File:** plugins/windows.spf
**Author:** Nicholas Nemtsev
**Description:** Useful words for windows mainpulation
VISIBLE? MINIMIZED?
**Usage:**

    WIN-EXIST: "xxx"
    IF WIN-HWND VISIBLE? 0=
    IF WIN-SHOW: "xxx" THEN THEN

    : LOG-WIN-TITLE ( a u -- )
    S" win-title.log" LOG ;
    ...
    Action:
    ['] LOG-WIN-TITLE WIN-ENUM
    ... 

<hr>

* **File:** plugins/words.spf
