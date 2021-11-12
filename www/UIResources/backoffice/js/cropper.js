function loadCropper(input){
	var current_file = input.files[0];
	var reader = new FileReader();
	var id = $('input[name=hidden_userid]')?$('input[name=hidden_userid]').val():0;
	var $gif; var $img; var $confirm; var $cancel; var $uploadCrop;

	showModal('cropper',{"title":"Nouvelle photo de profile"},function(){
		$gif = $('#loadingGif');
		$img = $('#image');
		$confirm = $('.jBox-Confirm-button-submit').first();
		$cancel = $('.jBox-Confirm-button-cancel').first();

		$uploadCrop = $('#image').croppie({
			viewport: {
				width: 400,
				height: 400,
				type: 'circle'
			},
			boundary: {
				width: 400,
				height: 400
			},
			enableExif: true
		});

		if (current_file.type.indexOf('image') === 0) {
			$gif.show();
			$confirm.hide();
			$cancel.hide();

			reader.onload = function (e) {
				$uploadCrop.croppie('bind', {
					url: e.target.result
				}).then(function(){
					$gif.hide();
					$confirm.show();
					$cancel.show();
					showNotification('Importation du fichier réussie','success', 'top' );
				});
			}
			reader.readAsDataURL(current_file);
		} else {
			$gif.hide();
			$cancel.show();
			showNotification('Echec de connexion. Réessayez plus tard','danger', 'top');
		}
	}, function(){
		$gif.show();
		$confirm.hide();
		$cancel.hide();
		$uploadCrop.croppie('result', {
			type: 'base64',
			size: 'viewport'
		}).then(function (resp) {
			saveCroppedPhoto(resp,id,function(answer){
				if(answer == 'SAVED'){
					$('img[id=photo]').removeAttr('src').attr('src',resp);
					$('img[alt="User Image"]').removeAttr('src').attr('src',resp);
					$('img[class=img-circle]').removeAttr('src').attr('src',resp);
					$('#profil_image').val('');
					theModal.close();
					showNotification( 'Photo de profile sauvegardée.','success', 'top');
					//window.location.reload();
				} else if(answer == 'NOT_SAVED'){
					$gif.hide();
					$confirm.show();
					$cancel.show();
					showNotification('Impossible de sauvegarder votre nouvelle photo de profile.','danger', 'top' );
				} else {
					$gif.hide();
					$confirm.show();
					$cancel.show();
					showNotification('Echec de connexion. Réessayez plus tard','danger', 'top');
				}
			});
		});
	});
	
}
function saveCroppedPhoto(base64, userId, callback){
	var img = base64.slice(base64.indexOf(',')+1,base64.length);
	var imgType = base64.split(/[\/;]/)[1];
	var imgName = SHA256(String(Date.now()));
	$.ajax({
		url:"https://100kjeunes.org/api",
		method:"POST",
		cache:false,
		data:{
			"model":"user_model",
			"method":"uploadPhoto",
			"data":{
				"action":"update",
				"name":imgName,
				"userId":userId,
				"category":"image",
				"b64":img,
				"type":imgType
			}
		},
		success: function(_answer){
			callback(_answer);
		},
		error: function(jqXHR, textStatus, errorThrown){
			callback('INTERNAL_ERROR');
		}
	});
}