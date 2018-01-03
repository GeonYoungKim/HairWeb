$(document).ready(function () {
	$('.star').on('click', function () {
      $(this).toggleClass('star-checked');
    });

    $('.ckbox label').on('click', function () {
      $(this).parents('tr').toggleClass('selected');
    });
    
    function funlang(){
    	$('input:checkbox[name="length"]').each(function() {
    		if(this.checked){//checked 처리된 항목의 값       	
    			count++;
               ckArr[2][count]= this.value;
          }
    	});
    }
    function funfar(){
    	$('input:checkbox[name="farmer"]').each(function() {
    		if(this.checked){//checked 처리된 항목의 값       	
    			c++;
               ckArr[0][c]= this.value;
          }
    	});
    }
    function funmagic(){
    	$('input:checkbox[name="magic"]').each(function() {
    		if(this.checked){//checked 처리된 항목의 값       	
    			c1++;
               ckArr[1][c1]= this.value;
          }
    	});
    }
    function funcolor(){
    	$('input:checkbox[name="color"]').each(function() {
    		if(this.checked){//checked 처리된 항목의 값       	
    			c2++;
               ckArr[3][c2]= this.value;
          }
    	});
    }
    function funcare(){
    	$('input:checkbox[name="care"]').each(function() {
    		if(this.checked){//checked 처리된 항목의 값       	
    			c3++;
               ckArr[4][c3]= this.value;
          }
    	});
    }
    function funetc(){
    	$('input:checkbox[name="etc"]').each(function() {
    		if(this.checked){//checked 처리된 항목의 값       	
    			c4++;
               ckArr[5][c4]= this.value;
          }
    	});
    }
    
    var count=0;
    var c=0;
    var c1=0;
    var c2=0;
    var c3=0;
    var c4=0;
    var ckArr = new Array();
    ckArr[0] = new Array();
    ckArr[1] = new Array();
    ckArr[2] = new Array();
    ckArr[3] = new Array();
    ckArr[4] = new Array();
    ckArr[5] = new Array();
     $('.button-search').on('click', function(){
    	funlang();
    	funfar();
    	zz();
    	count=0;
    	c=0; c1=0; c2=0; c3=0; c4=0;
    });
    
   function zz(){
	   $('.table td').css('display', 'none');
	   if(count>=1 || c>=1 || c1>=1|| c2>=1|| c3>=1|| c4>=1){
        	for(var i=1; i<count+1; i++){
        		 $('.table td[data-status1="' + ckArr[0][i] + '"]').fadeIn('slow');
        	}
        	for(var j=1; j<c+1; j++){
        		$('.table td[data-status2="' + ckArr[1][j] + '"]').fadeIn('slow');
        	}
        	for(var z=1; z<c1+1; z++){
        		$('.table td[data-status3="' + ckArr[2][z] + '"]').fadeIn('slow');
        	}
        	for(var q=1; q<c2+1; q++){
        		$('.table td[data-status4="' + ckArr[3][q] + '"]').fadeIn('slow');
        	}
        	for(var w=1; w<c3+1; w++){
        		$('.table td[data-status5="' + ckArr[4][w] + '"]').fadeIn('slow');
        	}
        	for(var x=1; x<c4+1; x++){
        		$('.table td[data-status6="' + ckArr[5][x] + '"]').fadeIn('slow');
        	}
        }
	   else{
		   $('.table td').css('display', 'none').fadeIn('slow');
	   }
    }
    
    $('input:checkbox[name="length"]').each(function() {
    	$('input:checkbox[name="length"]').is(":checked") == true
    });

 });