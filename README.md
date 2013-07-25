16 Digits Credit Card Number Generator
=====

Intro
-----
* Language: Prolog.
* Algorithm Used: Luhn Algorithm.
* Using this code is at your own risk.
 

Compiling
---------
* SWI-Prolog is required.
* clone this project.
* ```swipl```
* load project
  * ```?- ['./cc_gen.pl'].```

Manual
------
```
Allowed Options:
   1) ?- gen_cc_num(?Atom).
   2) ?- gen_cc_num(+List,?Atom).
```

Usage
-----
1) ``` gen_cc_num(Card). ```
2) ``` gen_cc_num([4,5],Card). ```
* use ```;``` for next option.

Output
------
The result of the examples above:
1) All options for a 16 digits credit card number.
    <!--![solarized selective contrast]
    (https://github.com/ng)-->

2) A custom first 6 digits number.
    <!--![solarized selective contrast]
    (https://github.com/altercation/solarized/raw/master/img/solarized-selcon.png)-->
