# How to run Program

```
git clone https://github.com/danieljonesdmj/Funky_Finance.git
cd Funky_Finance
ruby lib/input.rb
```

# Limitations

Program runs as requested aside from one issue- The funky font displays vertically instead of horizontally. Due to this I also didn't add funky font spaces between the outputted characters. All other instructions implemented.

I would have preferred to have extracted different responsibilties into different classes if I had had more time to spend on it. I would have liked to have four classes- one to retrieve the user input and set variables/values, one to calculate the missing variable, one to output the calculated value in the funky font, and one to run the program. 

Funky Finance
===

The leadership team at Loan-U-Like are worried about morale among their loan advisors. Advisors spend hours working out loan details for their customers using drab, boring hand-held calculators, and they're reporting low levels of job satisfaction.

The solution: software. And not just software. _Fun_ software. You have been commissioned to write a program that enables users to perform calculations quickly and easily. To make it a cheerful experience, all numbers output by the software must be displayed in something called 'FunkyFont', a set of digit characters bought at great expense from a trendy continental design agency.

## Business Logic
Loan-U-Like offers 'interest-only' loans. Customers borrow a lump sum for a set period of time, and every year must pay off that year's interest in full. At the end of the time period, they must pay off the original sum as well.

The program must facilitate calculations that help advisors explain the details of the loans to their customers, using the formula:

```
I = Prt
```

`I` is the total amount of interest paid off by the customer over the course of the loan, `P` is the amount of money borrowed, `r` is the annual interest rate, and `t` is the number of years before the loan is paid off. For example if a customer takes out a £2000 loan (P), with a 1% interest rate (r), for 10 years (t), the _total_ amount of money they will pay in interest payments (I) is:

```
£2000 * 1%/year * 10 years = £200
```

In each case, the user (a Loan-U-Like advisor), will know the value for any _three_ of the variables I, P, r and t, and use the program to calculate the fourth. E.g. if I, P and r are known, the program will calculate `t = I/(Pr)`.

## User Interface
Advisors have Ruby installed on their computers, and will run the program from the terminal, by typing `ruby funky_finance.rb` or similar.

The program should initially state: `Welcome to Funky Finance!`. It should then ask: `What will the first variable be?`, prompting the user to enter one of either `i`, `p`, `r`, or `t`. It should reject any other input. Once a valid choice has been made, it should ask: `What is the value of the first variable?` prompting the user to enter a number. It should reject any value other than a number with up to 2 decimal places.

It should then ask for second and third variables in the same way. Once all three variables have been provided, it should output the correct value of the fourth variable, rounding to 2 decimal places if the answer isn't a whole number.

Furthermore, the output should be in FunkyFont, using the following characters specified in the appendix below. So, for example, if the calculated value was `4.37`, the program would output:

```
=============
@ @   @@@ @@@
@ @     @   @
@@@   @@@   @
  @     @   @
  @ @ @@@   @
=============
```

Once the calculated value has been shown on screen, the program should ask: `Continue or quit?`, and prompt the user to enter either `q`, in which case the program exits, or `c`, in which case the program loops back round to `What will the first variable be?`. It should reject all other input.

## Format
Please write your code as one or more files, and put them into a private repository on Github (yay for those now being free!). Ideally you will commit your work as you go, using sensibly commit messages for each chunk of work. You are encouraged to write tests. When you are done, please invite `@patrick-gleeson` as a collaborator on your repository.

## Appendix
Below are the FunkyFont characters corresponding to `1-9`, `.` and ` ` (space). There should be a space between every character.

```
===
@@@
@ @
@ @
@ @
@@@
===
```
```
=
@
@
@
@
@
=
```
```
===
@@@
  @
@@@
@
@@@
===
```
```
===
@@@
  @
@@@
  @
@@@
===
```
```
===
@ @
@ @ 
@@@
  @
  @
===
```
```
===
@@@
@ 
@@@
  @
@@@
===
```
```
===
@@@
@ 
@@@
@ @
@@@
===
```
```
===
@@@
  @
  @
  @
  @
===
```
```
===
@@@
@ @
@@@
@ @
@@@
===
```
```
===
@@@
@ @
@@@
  @
@@@
===
```
```
=



@
=
```
```
=





=
```
