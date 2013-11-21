
$('.radio1').on('switch-change', function () {
	$('.radio1').bootstrapSwitch('toggleRadioState');
});
// or
$('.radio1').on('switch-change', function () {
	$('.radio1').bootstrapSwitch('toggleRadioStateAllowUncheck');
});
// or
$('.radio1').on('switch-change', function () {
	$('.radio1').bootstrapSwitch('toggleRadioStateAllowUncheck', false);
});