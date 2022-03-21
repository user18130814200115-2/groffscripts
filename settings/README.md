## om
### .MARKUP
Can be used to enable the default settings for a given style.
Universal among styles are heading styles, font size and footnote style (among others).
While the style `BOOK` uses recto-verso printing on A5 paper
and the style `ESSAY` loads the `REFER` settings and the `chicago` package.
`DRAFT` prints also on A5 with `printstyle TYPEWRITE`

### .PLUGIN
Loads a package as explained in ##packages.

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

#### .BOLD/.ITALIC
Prints $1 as bold/italic with $2 immediately following and $3 immediately preceding the previous font.

#### .REFER
Loads my default settings for the REFER preprocessor including sorting, brackets and the database file.
This macro is capped by `.MARKUP ESSAY`

#### .STRING HIGHEST_CHAPTER & LONGEST_CHAPTER
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

#### .REFERENCES
Adds a bibliography page where references are printed out.
A title may be given as an argument, the default of 'References' is taken otherwise.
