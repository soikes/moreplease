# TODO

- [x] Rename to More SQL Please

- [ ] Add tags for each example and make the site searchable

- [x] Get the code block to follow the window as the reader scrolls until they hit the next block (?)

  - [ ] Highlight the relevant line being discussed as the user scrolls as well? or add a `>` to the left of the line number to show that.

- [ ] Allow the user to toggle showing the tables as a static overlay at the top of the screen. it may be helpful when they are scrolled far down the page.

- [ ] Align the right side of the code blocks with the right side of the tables at top of page.

- [x] Instead of running sqlite on the server, use https://github.com/flimzy/go-sql.js to run sqlite in the browser! Nullify security and load concerns.

  - [x] This would involve changing the architecture of the site from being a server-side-rendered site to mostly a client side rendered site.
    - Code syntax highlighting would need to be done on client instead of rendered on server
    - SQLite API would need to be redone to work with go-sql
    - Server would just be responsible for sending the base HTML and .sql content to the browser which would handle the rest. Would react then become a better choice for the frontend?

- [x] Change syntax highlight rendering to use classes so we don't flood the page with inline styles.

- [ ] Write a Zed syntax highlighting module for .templ files: the one I am using seems to break a lot.

- [ ] Figure out how to style the grid so that by default we have a 2fr 3fr split but when tables are too long, they wrap to the next row.

- [ ] Don't forget to mention EXISTS(), ALL(), etc. when building the subqueries topic.

- [ ] Include the -> and ->> operators for extracting JSON. These are useful to know.

- [ ] for CASE statement, use ```sql
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

````

```sql
SELECT
    substr('JanFebMarAprMayJunJulAugSepOctNovDec',
           3 * (strftime('%m', date_column) - 1) + 1,
           3) AS month
FROM table;
````

- [x] Explain collation on aggregate functions page by linking back to ORDER BY

- [ ] Make schema container fall back to single column if the content is too wide for two

- [ ] Put CTEs before UNION because we use that in an example...

- [ ] Add caching headers / Etag for assets

- [x] Change the inline rendering to use the same colour scheme and font as the examples. Probably just need to replace the server side rendering everywhere with client side.

- [x] Move AlpineJS code into JS instead of in markup

- [ ] Add privacy-respecting analytics (integrated with Go?) to get simple site statistics

- [ ] Align the nav footer on each page as left, center, right -or- always put the nav footer in the left column in a .container

- [ ] Make a cache for the embedded assets

- [ ] Bring back server rendering of SQL as default content so examples can be indexed and searched

- [ ] Add thumbs down to "Bare column" example and search for other "counter-examples"

# BUGS

- [x] (FIXED: Just add jusify-self: start to the container too.) To make the sticky thing work I had to use divs as sticky containers in the css grid rows. This seems to have broken the "justify-self: start" that makes each bubble fit only the content. Now on the JOIN page all the bubbles are the same width. it makes it a bit visually overwhelming. Fix that and make them all their own unique size again based on the content.

- [ ] http://localhost:9001/select/#:~:The+column+name tries to fetch invalid assets:

2024/12/09 20:15:18 open selectassetsapp.js.html: file does not exist
2024/12/09 20:15:18 open selectassetsalpine.js.html: file does not exist
2024/12/09 20:15:18 open selectassetsstyles.css.html: file does not exist
2024/12/09 20:15:18 open selectassetsprism.css.html: file does not exist

- [ ] The search page links use the input text as the text fragment "#:~:" and it doesn't always match the search results, so the highlighting doesn't highlight the text on the destination page. See if there's a way to use the bleve matches as the fragment. I looked it up and couldn't find a way to do this, Fragments seems to return the full HTML snippet of the result. You could also parse the result as HTML and extract the content in the "mark" tags, then combine them to form the fragment string.

- [ ] Some of the JS widget content shows up in the search index, e.g. the "Run Reset" text from the buttons. Find a way to keep any unwanted text out of the content using CSS and including/excluding in htmlToText().
