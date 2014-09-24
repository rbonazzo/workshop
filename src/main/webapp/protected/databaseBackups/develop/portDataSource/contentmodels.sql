INSERT INTO contentmodels (modelid, contenttype, descr, model, stylesheet) VALUES (10001, 'CNG', 'Full - Default', '<article>
  <h1>$content.Title.text</h1>
#if ( $content.Picture.getImagePath("0") != "" )
<figure class="well well-small text-center">
  <img src="$content.Picture.getImagePath("0")" alt="$content.Picture.text" />
  #if ( $content.Caption.text != "" )
  <figcaption><p class="margin-medium-all">$content.Caption.text</p></figcaption>
  #end
</figure>
#end
#if ( $content.MainBody.text != "" )
$content.MainBody.text
#end
#if ($content.Attaches.size()>0)
  <h2>$i18n.getLabel("CNG_ATTACHMENTS")</h2>
  <ul>
  #foreach ($item in $content.Attaches )
    <li><a href="$item.attachPath">$item.text</a></li>
  #end
  </ul>
#end
#if ($content.Links.size()>0)
  <h2>$i18n.getLabel("CNG_LINKS")</h2>
  <ul>
  #foreach ($item in $content.Links)
    <li><a href="$item.destination">$item.text</a></li>
  #end
  </ul>
#end
</article>', NULL);
INSERT INTO contentmodels (modelid, contenttype, descr, model, stylesheet) VALUES (10012, 'CNG', 'Hero Unit + Picture', '<article>
  <div class="hero-unit span6">
  <h1>$content.Title.text</h1>
  #if ( $content.Abstract.text != "" )
  $content.Abstract.text
  #end
  #if ( $content.Links.size() != 0 )
  #set ( $link = $content.Links.get(0) )
  <p><a href="$link.destination" class="btn btn-primary btn-large">$link.text</a></p>
  #end
</div>
#if ( $content.Picture.getImagePath("0") != "" )
<div class="span4 well well-small">
<figure>
  <img src="$content.Picture.getImagePath("0")" alt="$content.Picture.text" />
  #if ( $content.Caption.text != "" )
  <figcaption class="text-center"><p class="margin-medium-all">$content.Caption.text</p></figcaption>
  #end
</figure>
</div>
#end
</article>', NULL);
INSERT INTO contentmodels (modelid, contenttype, descr, model, stylesheet) VALUES (10013, 'CNG', 'Lists - Picture', '<article>
  <h2>$content.Title.text</h2>
#if ( $content.Picture.getImagePath("0") != "" )
<figure>
  <img src="$content.Picture.getImagePath("0")" alt="$content.Picture.text" />
  #if ( $content.Caption.text != "" )
  <figcaption class="text-center"><p class="margin-medium-all">$content.Caption.text</p></figcaption>
  #end
</figure>
#end
<p class="text-right"><a class="btn" href="$content.contentLink">$i18n.getLabel("CNG_READ_MORE")</a></p>
</article>', NULL);
INSERT INTO contentmodels (modelid, contenttype, descr, model, stylesheet) VALUES (11000, 'LOG', 'Unify - Logo', '<img src="$content.Logo.getImagePath("0")" alt="$content.Logo.text" />
', NULL);
INSERT INTO contentmodels (modelid, contenttype, descr, model, stylesheet) VALUES (10043, 'CNG', 'Unify Content', '#if($content.Title.text != "")
	<div class="headline"><h3>$content.Title.text</h3></div>
#end

#if($content.MainBody.text != "")
	$content.MainBody.text
#end

#if($content.Picture.getImagePath("1") != "")
	<figure>
		<img src="$content.Picture.getImagePath("1")" class="img-rounded" alt="$content.Picture.text" />
		#if($content.Caption.text != "")
			<figcaption>
				<small>
					$content.Caption.text
				</small>
			</figcaption>
		#end
	</figure>
#end

#if ($content.Attaches.size()>0)
	<h4>$i18n.getLabel("CNG_ATTACHMENTS")</h4>
	<ul>
	#foreach ($item in $content.Attaches )
		<li><a href="$item.attachPath">$item.text</a></li>
	#end
	</ul>
#end
#if ($content.Links.size()>0)
	<h4>$i18n.getLabel("CNG_LINKS")</h4>
	<ul>
	#foreach ($item in $content.Links)
		<li><a href="$item.destination">$item.text</a></li>
	#end
	</ul>
#end
', NULL);
INSERT INTO contentmodels (modelid, contenttype, descr, model, stylesheet) VALUES (10045, 'CNG', 'Unify - Slide', '<div class="da-slide">
		<h2>$content.Title.text</h2>

		#if($content.Abstract.text!="")
			<div class="text-container">$content.Abstract.text</div>
		#end

		#if ($content.Picture.getImagePath("0")!="" || $content.MainBody.text !="" )
		<div class="da-img span6">
				<div class="span6">
						#if ($content.Picture.getImagePath("0")!="")
							<img src="$content.Picture.getImagePath("0")" width="100%" style="max-width: 100%" />
						#end
				</div>
		</div>
		#end
</div>', NULL);
INSERT INTO contentmodels (modelid, contenttype, descr, model, stylesheet) VALUES (10002, 'NWS', 'Full - Default', '<article>
  <p class="text-right"><time class="label" datetime="$content.Date.shortDate">$content.Date.getFormattedDate("EEEE dd MMMM yyyy")</time></p>
  <h1>$content.Title.text</h1>
#if ( $content.Picture.getImagePath("0") != "" )
<figure class="well well-small text-center">
  <img src="$content.Picture.getImagePath("0")" alt="$content.Picture.text" />
  #if ( $content.Caption.text != "" )
  <figcaption><p class="margin-medium-all">$content.Caption.text</p></figcaption>
  #end
</figure>
#end
#if ( $content.MainBody.text != "" )
$content.MainBody.text
#end
#if ($content.Attaches.size()>0)
  <h2>$i18n.getLabel("NWS_ATTACHMENTS")</h2>
  <ul>
  #foreach ($item in $content.Attaches )
    <li><a href="$item.attachPath">$item.text</a></li>
  #end
  </ul>
#end
#if ($content.Links.size()>0)
  <h2>$i18n.getLabel("NWS_LINKS")</h2>
  <ul>
  #foreach ($item in $content.Links)
    <li><a href="$item.destination">$item.text</a></li>
  #end
  </ul>
#end
</article>', NULL);
INSERT INTO contentmodels (modelid, contenttype, descr, model, stylesheet) VALUES (10021, 'NWS', 'Lists - Default', '<article>
<p class="text-right"><time class="label" datetime="$content.Date.shortDate">$content.Date.getFormattedDate("EEEE dd MMMM yyyy")</time></p>
<h2>$content.Title.text</h2>
#if ( $content.Abstract.text != "" )
  $content.Abstract.text
#end
<p class="text-right"><a class="btn" href="$content.contentLink">$i18n.getLabel("NWS_READ_MORE")</a></p>
</article>', NULL);
INSERT INTO contentmodels (modelid, contenttype, descr, model, stylesheet) VALUES (10005, 'ANN', 'Full - Default', '<article>
<p class="text-right">$i18n.getLabel("ANN_FROM"): <time class="label" datetime="$content.StartDate.shortDate">$content.StartDate.getFormattedDate("EEEE dd MMMM yyyy")</time>&#32;$i18n.getLabel("ANN_TO"): <time class="label" datetime="$content.EndDate.shortDate">$content.EndDate.getFormattedDate("EEEE dd MMMM yyyy")</time></p>
<h1>$content.Title.text</h1>
#if ($content.Summary.text != "")
$content.Summary.text
#end
#if ($content.Documents && $content.Documents.size() > 0)
<h2>$i18n.getLabel("ANN_DOCUMENTS")</h2>
  <ul>
    #foreach ($attach in $content.Documents)
    <li><a href="$attach.attachPath">$attach.text</a></li>
    #end
  </ul>
#end
</article>', NULL);
INSERT INTO contentmodels (modelid, contenttype, descr, model, stylesheet) VALUES (10011, 'CNG', 'Lists - Default', '<article>
  <h2>$content.Title.text</h2>
#if ( $content.Abstract.text != "" )
  $content.Abstract.text
#end
<p class="text-right"><a class="btn" href="$content.contentLink">$i18n.getLabel("CNG_READ_MORE")</a></p>
</article>


', NULL);
INSERT INTO contentmodels (modelid, contenttype, descr, model, stylesheet) VALUES (41, 'VID', 'for lists (title, data, link)', '<p>
<a href="$content.getContentLink()">
	$content.Date.shortDate &ndash; $content.Title.text
</a>
</p>', NULL);
INSERT INTO contentmodels (modelid, contenttype, descr, model, stylesheet) VALUES (4, 'VID', 'Complete (default)', '<h3>$content.Title.text</h3>

<p>
	<span class="label label-default">$content.Date.mediumDate</span>
</p>

#if ( $content.Desc.text != "" )
	<p>
  	$content.Desc.text
  </p>
#end

<iframe
	style="height: 400px;" 
	class="span12"
	#if ( $content.Provider.text == ''youtube'' )
  	src="//www.youtube.com/embed/$content.Video.text?rel=0"
  #end
	#if ( $content.Provider.text == ''vimeo'' )
  	src="//player.vimeo.com/video/$content.Video.text?badge=0"
	#end
  frameborder="0"
  webkitallowfullscreen
	mozallowfullscreen
	allowfullscreen></iframe>
', NULL);
INSERT INTO contentmodels (modelid, contenttype, descr, model, stylesheet) VALUES (10051, 'ANN', 'Lists - Default', '<article>
<p class="text-right">$i18n.getLabel("ANN_FROM"): <time class="label" datetime="$content.StartDate.shortDate">$content.StartDate.getFormattedDate("dd MMMM yyyy")</time>&#32;$i18n.getLabel("ANN_TO"): <time class="label" datetime="$content.EndDate.shortDate">$content.EndDate.getFormattedDate("dd MMMM yyyy")</time></p>
<h2>$content.Title.text</h2>
<p class="text-right"><a class="btn" href="$content.contentLink">$i18n.getLabel("ANN_READ_MORE")</a></p>
</article>', NULL);
