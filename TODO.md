# TODO

- [ ] Add tags for each example and make the site searchable

- [ ] Allow the user to toggle showing the tables as a static overlay at the top of the screen. it may be helpful when they are scrolled far down the page.

- [ ] Align the right side of the code blocks with the right side of the tables at top of page.

- Submit PRs to zed-templ

  - [x] Work on extension is in "raw-go" branch in my fork of templ-zed.

    - [ ] KNOWN ISSUE: Loading my .templ documents where I use @c.Inline("")</span>. causes the syntax highlighting to break when loading the documents. If you edit the text and re-save, it'll restore syntax highlighing. not sure if it's a problem with the extension, the grammar, or the custom C scanner in tree-sitter-templ.
    - [ ] KNOWN ISSUE: escaped quotes inside quotes e.g. "\"asdf\"" are being treated as special highlighting and showing the unicode value on a popover. is this expected?

- [ ] Figure out how to style the grid so that by default we have a 2fr 3fr split but when tables are too long, they wrap to the next row.

- [ ] Don't forget to mention EXISTS(), ALL(), etc. when building the subqueries topic.

- [ ] Include the -> and ->> operators for extracting JSON. These are useful to know.

- [ ] Tips and Tricks to add:

  - [ ]

  ```sql
    SELECT
    CASE CAST(strftime('%m', date_column) AS INTEGER)
    WHEN 1 THEN 'January'
    WHEN 2 THEN 'February'
    WHEN 3 THEN 'March'
    WHEN 4 THEN 'April'
    WHEN 5 THEN 'May'
    WHEN 6 THEN 'June'
    WHEN 7 THEN 'July'
    WHEN 8 THEN 'August'
    WHEN 9 THEN 'September'
    WHEN 10 THEN 'October'
    WHEN 11 THEN 'November'
    WHEN 12 THEN 'December'
    END AS month
    FROM table;
  ```

  - [ ]

  ```sql
  SELECT
      substr('JanFebMarAprMayJunJulAugSepOctNovDec',
            3 * (strftime('%m', date_column) - 1) + 1,
            3) AS month
  FROM table;
  ```

- [ ] Make schema container fall back to single column if the content is too wide for two

- [ ] Put CTEs before UNION because we use that in an example...

- [ ] Add caching headers / Etag for assets

- [ ] Add privacy-respecting analytics (integrated with Go?) to get simple site statistics

- [ ] Make an in-memory cache for the embedded assets

- [ ] Bring back server rendering of SQL as default content so examples can be indexed and searched, also benefits those with JS disabled

- [ ] Remove Run and Reset buttons if JS is disabled

- [ ] Add thumbs down to "Bare column" example and search for other "counter-examples"

- [ ] Minify and bundle all js dependencies (alpine, prism)

- [ ] Prepare JS build for prod
  - Remove source maps
  - Other build configs
- [ ] Prepare Go build for prod

- [ ] Add UPSERT

- [ ] Long tables run off the page in the schema

# BUGS

- [x] (FIXED: Just add jusify-self: start to the container too.) To make the sticky thing work I had to use divs as sticky containers in the css grid rows. This seems to have broken the "justify-self: start" that makes each bubble fit only the content. Now on the JOIN page all the bubbles are the same width. it makes it a bit visually overwhelming. Fix that and make them all their own unique size again based on the content.

- [ ] http://localhost:9001/select/#:~:The+column+name tries to fetch invalid assets:

2024/12/09 20:15:18 open selectassetsapp.js.html: file does not exist
2024/12/09 20:15:18 open selectassetsalpine.js.html: file does not exist
2024/12/09 20:15:18 open selectassetsstyles.css.html: file does not exist
2024/12/09 20:15:18 open selectassetsprism.css.html: file does not exist

- [ ] The search page links use the input text as the text fragment "#:~:" and it doesn't always match the search results, so the highlighting doesn't highlight the text on the destination page. See if there's a way to use the bleve matches as the fragment. I looked it up and couldn't find a way to do this, Fragments seems to return the full HTML snippet of the result. You could also parse the result as HTML and extract the content in the "mark" tags, then combine them to form the fragment string.

- [ ] Some of the JS widget content shows up in the search index, e.g. the "Run Reset" text from the buttons. Find a way to keep any unwanted text out of the content using CSS and including/excluding in htmlToText().
