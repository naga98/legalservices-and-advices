
 function performAjaxSubmit()
 {      try{
        var signImage = document.getElementById("sign").files[0];
        var formdata = new FormData();
        formdata.append("doc1", signImage);
        var xhr = new XMLHttpRequest();
        xhr.open("POST","FileUpload.jsp",true); 
        xhr.send(formdata);
        xhr.onload = function(e) 
        {   if(this.status == 200) 
            {document.getElementById("resp").src=this.responseText;   
            }else{
            document.getElementById("resp2").innerHTML=this.responseText;
            }
        }     
        }catch(e)
        {alert(e);
        }
    }
    function performAjaxSubmit2()
    {      try{
        var signImage = document.getElementById("sign2").files[0];
        var formdata = new FormData();
        formdata.append("doc2", signImage);
        var xhr = new XMLHttpRequest();
        xhr.open("POST","FileUpload.jsp",true); 
        xhr.send(formdata);
        xhr.onload = function(e) 
        {   if(this.status == 200) 
            {   document.getElementById("resp3").src=this.responseText;   
            }else{
                document.getElementById("resp4").innerHTML=this.responseText;
            }
        }     
        }catch(e)
        {alert(e);
        }
    }
    