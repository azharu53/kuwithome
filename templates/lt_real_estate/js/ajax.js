jQuery.noConflict();
if(typeof(BTLJ)=='undefined') var BTLJ = jQuery;
if(typeof(btTimeOut)=='undefined') var btTimeOut;
if(typeof(requireRemove)=='undefined') var requireRemove = true;



	
// AJAX LOGIN
function loginAjax(){ 
	if(BTLJ("#btl-input-username").val()=="") {
		showLoginError('Username Required');
		return false;
	}
	if(BTLJ("#btl-input-password").val()==""){
		showLoginError('Password Required');
		return false;
	}
	var token = BTLJ('.btl-buttonsubmit input:last').attr("name");
	var value_token = encodeURIComponent(BTLJ('.btl-buttonsubmit input:last').val()); 
	var datasubmit= "bttask=login&username="+encodeURIComponent(BTLJ("#btl-input-username").val())
	+"&passwd=" + encodeURIComponent(BTLJ("#btl-input-password").val())
	+ "&"+token+"="+value_token
	+"&return="+ encodeURIComponent(BTLJ("#btl-return").val());
	
	if(BTLJ("#btl-checkbox-remember").is(":checked")){
		datasubmit += '&remember=yes';
	}
	
	BTLJ.ajax({
	   type: "POST",
	   beforeSend:function(){
		   BTLJ("#btl-login-in-process").show();
		   BTLJ("#btl-login-in-process").css('height',BTLJ('#btl-content-login').outerHeight()+'px');
		   
	   },
	   url: 'index.php?option=com_propertycontact&task=ajaxlogin',
	   data: datasubmit,
	   success: function (html, textstatus, xhrReq){
		 
		  if(html == "1" || html == 1){
			  // window.location.href='index.php?option=com_propertycontact&task=ajaxlogin';
			  window.location.reload();
		   }else{
			   if(html.indexOf('</head>')==-1){		   
				   showLoginError('Please Enter Valid Username and Password');
				}
				else
				{
					if(html.indexOf('btl-panel-profile')==-1){ 
						showLoginError('Another plugin has redirected the page on login, Please check your plugins system');
					}
					else
					{
						window.location.href='';
					}
				}
		   }
	   },
	   error: function (XMLHttpRequest, textStatus, errorThrown) {
			alert(textStatus + ': Ajax request failed!');
	   }
	});
	return false;
}
function showLoginError(notice,reload){
	BTLJ("#btl-login-in-process").hide();
	BTLJ("#btl-login-error").html(notice);
	BTLJ("#btl-login-error").show();
	if(reload){
		setTimeout(function() {window.location.reload();},5000);
	}
}

