Terrible Name
=============

Terrible Name is a custom theme for subreddits written in [SCSS][].
See [/r/TerribleName][subreddit] for a demo.

How to use
----------

1. Go to your subreddit settings and scroll to section **look and feel**.
   Upload file `images/logo.png` using the **upload header image** form.

2. Click **edit the stylesheet** to go to stylesheet settings and upload the
   other files inside `images/` directory using the upload form in that page.

3. (Skip this step if you don't use the SCSS files) run `build.sh` to recompile
   the SCSS files into `terriblename.css`.

4. Copy the content of `terriblename.css` and put it into your subreddit stylesheet.

5. Click **Save** button to apply.

Known Issues
------------

1. Moderation buttons in Unmoderated Links page and on any link with reports are
   still using the default style.

2. Some wiki diffs might overlap with sidebar ([for example][fucking diff]).

***

Icons used in this theme are part of the Fugue Icon Set by [Yusuke Kamiyamane][].
Picture used in header banner is a [photograph][nyc] by [Jnn13][].

[scss]: http://sass-lang.com/
[yusuke kamiyamane]: http://p.yusukekamiyamane.com/
[nyc]: http://en.wikipedia.org/wiki/File:NYC_Panorama_edit2.jpg
[jnn13]: http://commons.wikimedia.org/wiki/User:Jnn13
[subreddit]: http://www.reddit.com/r/TerribleName
[compiled-css]: http://www.reddit.com/r/TerribleName/about/stylesheet
[fucking diff]: http://www.reddit.com/r/TerribleName/wiki/index?v=92fa5ffe-e878-11e3-b3f7-12313b0758c1&v2=9eb34ba6-eca3-11e3-81e8-12313d090eed
