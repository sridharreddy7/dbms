// Add your custom JS code here
function logout(){
//	alert("called logout");
	$.ajax({
	    type : "GET",
	    url  : "http://localhost:8080/Struts2Sample/logout",
	    dataType : 'text/javascript',
//	    data : {'name' : $("#selectedCountry").text()},
	    success : function(result){
//	      if (result != null && result.length > 0){
//	        $("statesdivid").html(result);
//	      }
	    },
	    error : function(xhr, errmsg) {alert("No values found..!!");}
	});    
}