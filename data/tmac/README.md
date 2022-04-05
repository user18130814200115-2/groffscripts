# modules
## module
Defines `.MODULE` to load a module with name $1,
for instance
```
.MODULE roman
```
will load the roman.tmac file, provided it is in the right place.
The `od` macros will load this module thereby allowing you to load further
modules easily.


## roman
Registers 1000 Roman numerals to be accessed programmatically.
The syntax is `\[ROMANx]` where `x` is your number of choice.

## chicago
This package has [it's own repo](https://github.com/user18130814200115-2/chicago-refer) too.
Make refer output references according to the
[Chicago manual of style](https://www.chicagomanualofstyle.org/home.html).

You will need to manually set the GNU refer settings, either from the comandline or with a .R1/.R2 block. You can output the recommended block to the commandline with the macro `.chicago`.

## list
This package allows for making easier bulleted lists with `mom`.
The syntax is simple, use `.>` for the first level `.>>` for the second and so forth.
The limit is currently set to 9 indented lists, though this is a variable you can change in the file.

### markup
Defines `.MARKUP` to be put at the top of a `groff_mom` files. 
This macro can be used to enable the default settings for a given style.
The style `BOOK` uses recto-verso printing on A5 paper,
the style `ESSAY` emplays neary-default mom settings on A4 paper,
`DRAFT` prints also on A4 with `printstyle TYPEWRITE`.
See `markup.tmac` for a full list of settings.

## chapter
Defines a number of macros usefull for working with chapters
(especially novel chapters).

### .NEW_CHAPTER
Starts a new chapter with a similar style to mom's `DOCTYPE CHAPTER`,
but using regular headings instead for more fine-tuned control.
The chapters are automatically numbered and can be manually modified by writing to the `chapter` register.
`NEW_CHAPTER` accepts an argument to name the chapter in addition to it's number.

#### .NEW_NAMED
Same as `NEW_CAHPER` but without the `Chapter X` string, useful for prologues, epilogues and alike.
`NEW_NAMED` of course accepts an argument to give the name.

#### .COVERPAGE
Turns mom's DOCCOVER into a cover page and delays pagination.

#### .DEDICATION
Generates a largely empty, unnumbered page with a block of text in the centre.

#### HIGHEST_CHAPTER & LONGEST_CHAPTER
The chaper plugin also defines two registers called 
HIGHEST_CHAPTER and LONGEST_CHAPTER
By default, when printing a TOC,
the chapter named (from .NEW_CHAPTER) are intended to all be in line,
like so:
```
Chapter I     The journey begins ....................... 1
Chapter II    An unexpecetd turn ....................... 2
Chapter III   New friends .............................. 3
Chapter IV    The battle at Brugge ..................... 4
```
As you can see, the chapter name is indented somewhat so that they are all in line.
The maximum distance of this indent is set by the `.HIGHEST_CHAPTER` call.
In the example above, the `HIGHEST_CHAPTER` should be set to "III" at least,
or to a longer string if you want a larger indent.
By default, the highest chapter in `BOOK` markup is set to "VIII",
which is likely to be enough.
This behaviour is altogether disabled in `DRAFT` markup.
The `LONGEST_CHAPTER` string does the same, but for the chapter names, EG:
```
Chapter I     The journey begins   .................... 1
Chapter II    An unexpecetd turn   .................... 2
Chapter III   New friends          .................... 3
Chapter IV    The battle at Brugge .................... 4
```

## fontmod
Defines two macros, `.BOLD` and `.ITALIC`.
These will print the first agrument in bold-, and italic- fonts respectively,
immidiately following with the 2nd argument and preceding with the 3rd.
For instance,
```
.BOLD BOLD ) (
```
Will compile to `(BOLD)`
with "BOLD" in a bold font (so long as a bold font is avaiable).
