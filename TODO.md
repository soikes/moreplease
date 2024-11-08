# TODO

- [x] Rename to More SQL Please

- [ ] Add tags for each example and make the site searchable

- [x] Get the code block to follow the window as the reader scrolls until they hit the next block (?)

  - Highlight the relevant line being discussed as the user scrolls as well? or add a `>` to the left of the line number to show that.

- [ ] Allow the user to toggle showing the tables as a static overlay at the top of the screen. it may be helpful when they are scrolled far down the page.

- [ ] Align the right side of the code blocks with the right side of the tables at top of page.

- [ ] Instead of running sqlite on the server, use https://github.com/flimzy/go-sql.js to run sqlite in the browser! Nullify security and load concerns.

  - [ ] This would involve changing the architecture of the site from being a server-side-rendered site to mostly a client side rendered site.
    - Code syntax highlighting would need to be done on client instead of rendered on server
    - SQLite API would need to be redone to work with go-sql
    - Server would just be responsible for sending the base HTML and .sql content to the browser which would handle the rest. Would react then become a better choice for the frontend?

- [ ] Change syntax highlight rendering to use classes so we don't flood the page with inline styles.

# BUGS

- [x] (FIXED: Just add jusify-self: start to the container too.) To make the sticky thing work I had to use divs as sticky containers in the css grid rows. This seems to have broken the "justify-self: start" that makes each bubble fit only the content. Now on the JOIN page all the bubbles are the same width. it makes it a bit visually overwhelming. Fix that and make them all their own unique size again based on the content.
