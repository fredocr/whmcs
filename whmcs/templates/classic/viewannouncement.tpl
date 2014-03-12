<p class="heading2"><img src="images/article.gif" align="absmiddle" border="0" /> {$title}</p>

{if $twittertweet}
<div class="tweetbutton">
<a href="https://twitter.com/share" class="twitter-share-button" data-count="vertical" data-via="{$twitterusername}">Tweet</a><script type="text/javascript" src="//platform.twitter.com/widgets.js"></script>
</div>
{/if}

{$text}

<br /><br />

<p class="heading3">{$timestamp|date_format:"%A, %B %e, %Y"}</p>

{if $googleplus1}
<br /><br />
<g:plusone annotation="inline"></g:plusone>
{literal}<script type="text/javascript">
  (function() {
    var po = document.createElement('script'); po.type = 'text/javascript'; po.async = true;
    po.src = 'https://apis.google.com/js/plusone.js';
    var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(po, s);
  })();
</script>{/literal}
{/if}

{if $facebookrecommend}
<br /><br />
{literal}
<div id="fb-root"></div>
<script>(function(d, s, id) {
  var js, fjs = d.getElementsByTagName(s)[0];
  if (d.getElementById(id)) {return;}
  js = d.createElement(s); js.id = id;
  js.src = "//connect.facebook.net/en_US/all.js#xfbml=1";
  fjs.parentNode.insertBefore(js, fjs);
}(document, 'script', 'facebook-jssdk'));</script>
{/literal}
<div class="fb-like" data-href="{$systemurl}{if $seofriendlyurls}announcements/{$id}/{$urlfriendlytitle}.html{else}announcements.php?id={$id}{/if}" data-send="true" data-width="450" data-show-faces="true" data-action="recommend"></div>
{/if}

{if $facebookcomments}
<br /><br />
{literal}
<div id="fb-root"></div>
<script>(function(d, s, id) {
  var js, fjs = d.getElementsByTagName(s)[0];
  if (d.getElementById(id)) {return;}
  js = d.createElement(s); js.id = id;
  js.src = "//connect.facebook.net/en_US/all.js#xfbml=1";
  fjs.parentNode.insertBefore(js, fjs);
}(document, 'script', 'facebook-jssdk'));</script>
{/literal}
<fb:comments href="{$systemurl}{if $seofriendlyurls}announcements/{$id}/{$urlfriendlytitle}.html{else}announcements.php?id={$id}{/if}" num_posts="5" width="500"></fb:comments>
{/if}

<p><a href="announcements.php">{$LANG.clientareabacklink}</a></p>

<p align="center"><img src="images/rssfeed.gif" align="middle" alt="" /> <a href="announcementsrss.php">{$LANG.announcementsrss}</a></p>