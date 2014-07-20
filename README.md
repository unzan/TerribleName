Terrible Name
=============

Terrible Name is a simple reddit theme written in [SCSS][].
It's available as subreddit theme and userstyle. You can see a demo of subreddit
theme in [/r/TerribleName][subreddit].

Installation
------------

### For subreddit theme

1. Go to your subreddit settings and scroll to section **look and feel**.
   Upload file `images/logo.png` using the **upload header image** form.

2. Click **edit the stylesheet** to go to stylesheet settings and upload the
   other files inside `images/` directory using the upload form in that page.

3. (Skip this step if you don't use the SCSS files) run `build.sh` to recompile
   the SCSS files into `terriblename.css`.

4. Copy the content of `terriblename.css` and put it into your subreddit stylesheet.

5. Click **Save** button to apply.

### For userstyle

#### Firefox

Create a blank style with Stylish and put the content of `userstyle.css` into
the editor box then click **Save**.

#### Chrome/Chromium

In the **Installed styles** page, click **Write new style**. Paste the content
of `userstyle.css` into the Code box and remove these two lines:

    @namespace url(http://www.w3.org/1999/xhtml);
    @-moz-document domain("reddit.com") {

(it's right below a block of comment at the top of pasted code)

You also should remove the closing brace (`}`) at the last line.

In the **Applies to** field, click **Specify** and select **URLs on the domain**
then type `reddit.com` in text input next to the dropdown. Then
finally click **Save**.

Notes on userstyle
------------------

1. The userstyle version is not meant to override custom stylesheet of subreddits.
   If you don't want to see any style conflict, uncheck the
   **allow subreddits to show me custom styles** option in your preference or use
   RES to disable individual subreddit stylesheet.

2. No plan for nightmode compatibility.

Known Issues
------------

1. Moderation buttons in Unmoderated Links page and on any link with reports are
   still using the default style.

2. Some wiki diffs might overlap with sidebar when the browser's window is too
   small ([for example][fucking diff]).

3. RES active entry indicator overlapped with "sponsored link" label in
   promoted link.

4. Doesn't work with RES pinned header feature.

5. The newly added blue contest mode notice makes the navigation toolbar
   in comments page messy.

***

Icons used in this theme are part of the Fugue Icon Set by [Yusuke Kamiyamane][].
Picture used in header banner is a [photograph][photo] by
[Holger Winandt][photographer].

[scss]: http://sass-lang.com/
[yusuke kamiyamane]: http://p.yusukekamiyamane.com/
[photo]: http://commons.wikimedia.org/wiki/File:Panorama_Frankfurt_vom_Maintower_edit.jpg
[photographer]: http://de.wikipedia.org/wiki/Benutzer:Schaengel
[subreddit]: http://www.reddit.com/r/TerribleName
[1tbs]: http://en.wikipedia.org/wiki/Indent_style#Variant:_1TBS
[compiled-css]: http://www.reddit.com/r/TerribleName/about/stylesheet
[fucking diff]: http://www.reddit.com/r/TerribleName/wiki/index?v=92fa5ffe-e878-11e3-b3f7-12313b0758c1&v2=9eb34ba6-eca3-11e3-81e8-12313d090eed
