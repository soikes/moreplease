# TODO

- [x] Add tags for each example and make the site searchable

  - FIXED: Site is full-text searchable.

- [x] Allow the user to toggle showing the tables as a static overlay at the top of the screen. it may be helpful when they are scrolled far down the page.

  - FIXED: User can "pop out" tables into a new tab.

- [x] Align the right side of the code blocks with the right side of the tables at top of page.

  - WONTFIX: Tables need to be able to extend off the page. See styling issues below related to alignment.

- Submit PRs to zed-templ

  - [x] Work on extension is in "raw-go" branch in my fork of templ-zed.

    - FIXED: My PR was merged into main by the maintainer.

    - [ ] ISSUE tree-sitter-templ: Loading my .templ documents where I use "</span>." (the period specifically) causes the syntax highlighting to break when loading the documents. If you edit the text and re-save, it'll restore syntax highlighing.
    - [ ] ISSUE with tree-sitter-templ: "</span> for" is treated as a "for" statement, same with "if", "else", ".", "(", ")"
      - Depending on the badly-parsed token, the rest of the formatting will be incorrect until a token appears that "closes" the incorrect expression or statement. e.g. "for" breaks syntax until "{ }" appears.
      - These were proven with tree-sitter playground. Load some source and look for "ERROR" in the output on the right.
    - [ ] ISSUE: escaped quotes inside quotes e.g. "\"asdf\"" are being treated as special highlighting and showing the unicode value on a popover. is this expected?
    - [ ] ISSUE with tree-sitter-templ: Component imports break if you modify part of it, such as: "@c.Page{Site: site.MSP, Page: p}.Render() {". Removing the "()" breaks the entire tree and treats the following as a templ "expression". Deleting the entire line and re-typing or pasting it restores the proper syntax tree.

- [x] Figure out how to style the grid so that by default we have a 2fr 3fr split but when tables are too long, they wrap to the next row.

- [x] Make schema container fall back to single column if the content is too wide for two

- [ ] Add caching headers / Etag for assets

  - [ ] CSS
  - [ ] JS
  - [ ] Images

- [x] Add privacy-respecting analytics (integrated with Go?) to get simple site statistics

- [x] Make an in-memory cache for the embedded assets

- [x] Bring back server rendering of SQL as default content so examples can be indexed and searched, also benefits those with JS disabled

- [x] Remove Run and Reset buttons if JS is disabled

- [x] Add thumbs down to "Bare column" example and search for other "counter-examples" DONE WONTFIX

  - [x] Correlated subqueries

- [x] Minify and bundle all js dependencies (alpine, prism)

- [x] Prepare JS build for prod
  - Remove source maps
  - Other build configs
- [x] Prepare Go build for prod

- [x] Add UPSERT

- [x] Long tables run off the page in the schema

- [x] robots.txt

  - for search crawlers
  - ban llm crawlers
    - [x] May need to add this to the server itself to block based on UA / ASN

- [ ] Clone to a fresh directory and try the build tools to ensure they work from scratch

- [x] Manage dependencies (go, templ, node) when inside the repo dir. nix?

  - DONE: Using asdf for now.

- [ ] Accessibility

  - [ ] are there tools to scan my site for accessibility score
  - [ ] test with screen readers
  - [ ] ARIA attributes
  - [ ] color schemes / color blindness testing
  - [ ] Tab inside text editor - capture the tab event to cause a tab indent but must not interfere with screen readers. (WCAG 2.1.2: if [tabbing off the object] requires more than unmodified arrow or tab keys or other standard exit methods, the user is advised of the method for moving focus away.)

- [ ] Tab inside text editor

- [ ] Convert all dates in schemas to relative dates e.g. date('now()', '-22 days', ...)

- [ ] Custom 404 page

- [x] Mobile responsive topic pages that resize the code editor properly

- [ ] Enhance the bottom-of-page navigation to allow pages to be created out of order - in other words, keep looking through the site model pages and sections until we find a page that is enabled.

# BUGS

- [x] (FIXED: Just add jusify-self: start to the container too.) To make the sticky thing work I had to use divs as sticky containers in the css grid rows. This seems to have broken the "justify-self: start" that makes each bubble fit only the content. Now on the JOIN page all the bubbles are the same width. it makes it a bit visually overwhelming. Fix that and make them all their own unique size again based on the content.

- [x] (FIXED) http://localhost:9001/select/#:~:The+column+name tries to fetch invalid assets:

2024/12/09 20:15:18 open selectassetsapp.js.html: file does not exist
2024/12/09 20:15:18 open selectassetsalpine.js.html: file does not exist
2024/12/09 20:15:18 open selectassetsstyles.css.html: file does not exist
2024/12/09 20:15:18 open selectassetsprism.css.html: file does not exist

- [ ] The search page links use the input text as the text fragment "#:~:" and it doesn't always match the search results, so the highlighting doesn't highlight the text on the destination page. See if there's a way to use the bleve matches as the fragment. I looked it up and couldn't find a way to do this, Fragments seems to return the full HTML snippet of the result. You could also parse the result as HTML and extract the content in the "mark" tags, then combine them to form the fragment string.

  - [ ] Related: text fragments stopped matching inline code - I am guessing this is because I changed the highlight code to run after DOMContentLoaded to prevent race conditions and it causes the styling the browser applies to highlighted text to be blown away by prism.js (because prism changes the html structure to tokenize and highlight the code.)

- [ ] Some of the example code editor/runner content shows up in the search index, e.g. the "Run Reset" text from the buttons. Find a way to keep any unwanted text out of the content using CSS and including/excluding in htmlToText(). This should be handled by using "ExcludeTags" in the documentprovider but not working for some reason

- [ ] "Error: ESCAPE expression must be a single character" error in like_escape.sql

# CONTENT

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

  - [ ] Put CTEs before UNION because we use that in an example...

- [ ] add group_concat as an example in group by?
  - SELECT vendor_id, count(id) AS products_sold, group_concat(DISTINCT category) as categories
    FROM products
    GROUP BY vendor_id
    ORDER BY products_sold DESC;
