Terrible Name
=============

[![index][index-thumb]][index-orig] [![submit][submit-thumb]][submit-orig]

Terrible Name is a custom theme for subreddits written in [SCSS][].
See [/r/TerribleName][subreddit] for a demo.

How to use
----------

1. Go to your subreddit settings and scroll to section **look and feel**.
   Upload file `images/logo.png` using the **upload header image** form.

2. Click **edit the stylesheet** to go to stylesheet settings and upload the
   other files inside `images/` directory using the upload form in that page.

   If you renamed the images before uploading, edit file `scss/_variables.scss`
   and replace all image variables with the correct image name (the `%%name%%`
   ones not `name.ext` ones).

3. Compile `main.scss`.

4. Copy the content of compiled CSS and put it into your subreddit stylesheet.

5. Click **Save** button to apply.

If you don't understand how to use SCSS you can also copy the
[already compiled CSS][compiled-css] used by /r/TerribleName.

***

Icons used in this theme are part of the Fugue Icon Set by [Yusuke Kamiyamane][].
Picture used in header banner is a [photograph][nyc] by [Jnn13][].

[scss]: http://sass-lang.com/
[yusuke kamiyamane]: http://p.yusukekamiyamane.com/
[nyc]: http://en.wikipedia.org/wiki/File:NYC_Panorama_edit2.jpg
[jnn13]: http://commons.wikimedia.org/wiki/User:Jnn13
[subreddit]: http://www.reddit.com/r/TerribleName
[compiled-css]: http://www.reddit.com/r/TerribleName/about/stylesheet
[index-orig]: http://i.imgur.com/TLpyOW5.jpg
[submit-orig]: http://i.imgur.com/ztZVram.png
[index-thumb]: http://i.imgur.com/TLpyOW5m.jpg
[submit-thumb]: http://i.imgur.com/ztZVramm.png
