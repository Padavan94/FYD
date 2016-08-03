<div style="width: 300px;">
    <form action="<?php echo $action; ?>" id="back-call--form" method="post" enctype="multipart/form-data" class="form-horizontal" onsubmit="sendBackCallForm(event)">
        <fieldset>
            <legend><?php echo $text_back_call; ?></legend>
            <div class="form-group required">
                <label class="col-sm-2 control-label" for="input-name"><?php echo $entry_name; ?></label>
                <div class="col-sm-10">
                    <input type="text" name="name" value="" id="input-name" class="form-control" />
                </div>
            </div>
            <div class="form-group required">
                <label class="col-sm-2 control-label" for="input-email"><?php echo $entry_phone; ?></label>
                <div class="col-sm-10">
                  <input type="text" name="phone" value="" id="input-email" class="form-control" />
                </div>
            </div>
            <?php echo $captcha; ?>
        </fieldset>
        <div class="buttons">
            <div class="pull-right">
                <input class="btn btn-primary" type="submit" value="<?php echo $button_submit; ?>" onclick="sendBackCallForm(event)" />
            </div>
        </div>
    </form>
    <script>
	function sendBackCallForm(e) {
        e.preventDefault();
        
        var form = $('#back-call--form');
        //console.log(form.find('button'));
		$.ajax({
			url: 'index.php?route=information/back_call/send',
			type: 'post',
			data: form.serialize(),
			dataType: 'json',
			beforeSend: function() {
				form.find('button').button('loading');
			},
			complete: function() {
				form.find('button').button('reset');
			},
			success: function(json) {
                form.find('.text-danger').remove();
                form.find('.has-error').removeClass('has-error');                
                if(json.error == true){
                    var flag = 0;
                    for(var error in json.errors){
                        form.find('[name="'+error+'"]').after('<div class="text-danger">'+json.errors[error]+'</div>').parent().addClass('has-error');
                        if(flag == 0){
                            form.find('[name="'+error+'"]').focus();
                            flag = 1;
                        }
                    }
                }else{
                    window.location = json.redirect;
                }
			},
			error: function(xhr, ajaxOptions, thrownError) {
				alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
			}
		});
	}        
    </script>
</div>
