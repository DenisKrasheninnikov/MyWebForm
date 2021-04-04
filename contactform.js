jQuery(document).ready(function($) {

$(".ajax-contact-form").submit(function() {
var str = $(this).serialize();

$.ajax({
type: "GET",
url: "display.php",
data: str,
success: function(msg) {
if(msg == 'OK') {
result = '<p>Ваша заявка принят</p>';
$(".fields").hide();
} else {
result = msg;
}
$('.note').html(result);
}
});
return false;
});
});