$('.quote').on('click', function(event) {
	var post_id = $(event.target).closest('[data-id]').data('id');
	$('#message').val($('#message').val() + " " + "#" + post_id);
})

$('.quoting').on('mouseover', function(event) {
	var post_id = $(event.target).data('quote-post-id');
	var post = $('[data-id=' + post_id + '] .content');
	var poster = $('[data-id=' + post_id + '] .username').text();
	var quote_header_html = "Quoting <b>poster</b><br>";
	$(".flying-quote").append(quote_header_html + $(post).html());
	$(".flying-quote").css({
		top: $(event.target).offset().top + 25, 
		left: $(event.target).offset().left + 25
	}).show();
})

$('.quoting').on('mouseout', function(event) {
	$(".flying-quote").empty();
	$(".flying-quote").css({
		top: 0,
		left: 0
	}).hide();
})


$('.quoting').on('click', function(event) {
	var post_id = $(event.target).data('quote-post-id');
	var post = $('[data-id=' + post_id + ']');
	$(post).css({
		background: '#eae0da',
    	border: '3px double #724f4d'
	});
})
