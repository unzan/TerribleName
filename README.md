Terrible Name
=============

Terrible Name is a custom reddit theme written in [SCSS][].
It's available as subreddit theme and userstyle. You can see a demo of subreddit
theme in [/r/TerribleName][subreddit].

Compiling
-----------

*Skip this section if you don't want to use SCSS*

Just run `make`. If you edit the SCSS files a lot and want the output CSS
updated automatically, use `make watch-all`.

To control the output you can pass these parameters when running `make`:

- **SOURCEMAP**: Generate [sourcemaps][]. Valid values are `auto`, `inline`, `file`,
  and `none` (default).

- **ASSETS**: Control values of image variables. If set to `remote` all image
  variables in subreddit stylesheet will use `%%name%%` notation and userstyles
  will use imgur URLs. If set to `local` all image variables will use images on
  located on `image` directory.

- **STYLE**: [Style of the generated CSS][output-style]. Valid values are
  `expanded` (default), `nested`, `compact`, and `compressed`.


[sourcemaps]: http://sass-lang.com/documentation/file.SASS_REFERENCE.html#sourcemap-option
[output-style]: http://sass-lang.com/documentation/file.SASS_REFERENCE.html#output_style


For example, to regenerate CSS with compressed style using local images and
sourcemaps you can use:

    make STYLE=compressed SOURCEMAP=file ASSETS=local clean all

Installation
------------

### For subreddit theme

1. Go to your subreddit settings and scroll to section **look and feel**.
   Upload file `images/logo.png` using the **upload header image** form.

2. Click **edit the stylesheet** to go to stylesheet settings and upload the
   other files inside `images/` directory using the upload form in that page.

3. Copy the content of `css/terriblename.css` and put it into your subreddit
   stylesheet.

4. Click **Save** button to apply.

### For userstyle

#### Using userstyles.org

- [Normal](https://userstyles.org/styles/103630/reddit-terrible-name-theme)
- [RES Nightmode compatibility](https://userstyles.org/styles/111547/reddit-terrible-name-theme-nightmode-compatibility)


#### Manual installation

Create a blank style with Stylish and put the content of `css/userstyle.css` into
the editor box then click **Save**. If you want nightmode compatibility, you'll
need to create another blank style and copy the content of
`css/userstyle-nightmode.css` into it.

Known Issues
------------

1. Some wiki diffs might overlap with sidebar when the browser's window is too
   small ([for example][fucking diff]).

2. RES active entry indicator overlapped with "sponsored link" label in
   list of promoted links page.

3. Doesn't work with RES pinned header feature.

***

Icons used in this theme are part of the Fugue Icon Set by [Yusuke Kamiyamane][].
Picture used in header banner is a [photograph][photo] by
[Holger Winandt][photographer].

[scss]: http://sass-lang.com/
[yusuke kamiyamane]: http://p.yusukekamiyamane.com/
[photo]: http://commons.wikimedia.org/wiki/File:Panorama_Frankfurt_vom_Maintower_edit.jpg
[photographer]: http://de.wikipedia.org/wiki/Benutzer:Schaengel
[subreddit]: http://www.reddit.com/r/TerribleName
[compiled-css]: http://www.reddit.com/r/TerribleName/about/stylesheet
[fucking diff]: http://www.reddit.com/r/TerribleName/wiki/index?v=92fa5ffe-e878-11e3-b3f7-12313b0758c1&v2=9eb34ba6-eca3-11e3-81e8-12313d090eed
