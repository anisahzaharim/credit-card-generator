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
   1. ?- gen_cc_num(?Atom).
   2. ?- gen_cc_num(+List,?Atom).
```

Usage
-----
1. ``` gen_cc_num(Card). ```
2. ``` gen_cc_num([4,5],Card). ```
* use ```;``` for next option.

Output
------
# 1. All options for a 16 digits credit card number.
 ![All Options Card Number](https://raw.github.com/eldardamari/credit-card-generator/master/img/gen_cc_num1.jpg)
# 2. A custom first 6 digits number.
 ![Custom Card Number](https://raw.github.com/eldardamari/credit-card-generator/master/img/gen_cc_num2.jpg)
