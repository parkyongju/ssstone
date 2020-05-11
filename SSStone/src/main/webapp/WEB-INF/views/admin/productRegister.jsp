<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%
   request.setCharacterEncoding("utf-8");
%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="sec"
   uri="http://www.springframework.org/security/tags"%>
<%@ include file="../includes/adminheader.jsp"%>

<!-- BREADCRUMB -->
    <nav class="py-3" style="font-family: 'Do Hyeon', sans-serif;">
      <div class="container">
        <div class="row">
          <div class="col-12">

            <!-- Breadcrumb -->
            <ol class="breadcrumb mb-0 font-size-xs text-gray-400">
              <li class="breadcrumb-item">
                <a class="text-gray-400" href="index.html">Home</a>
              </li>
              <li class="breadcrumb-item active">
                   관리자 상품등록
              </li>
            </ol>

          </div>
        </div>
      </div>
    </nav>

<section class="page-wrapper" style="margin-left:230px">
	<div class="container">
	
      <div class="row">
          <div class="col-12 text-center">
            <!-- Heading -->
            <h3 class="mb-10 mr-13">관리자 상품등록</h3>
            <hr>
          </div>
        </div>

            <!-- /.panel-heading -->
         <form method="post" action="/admin/productRegister" role="form">
         
            <div class="col-12">
               <div class="col-md-6">
                  <div class="form-group">
                     <label for="P_CONTENT"> 상품 이름 </label>
                     <div style="display: flex;">
                        <input class="form-control" id="P_NAME" type="text" name="p_name">
                     </div>
                  </div>
               </div>
            </div>

            <div class="col-12">
               <div class="col-md-6">
                  <div class="form-group">
                     <label for="P_PRICE"> 상품 가격 </label>
                     <div style="display: flex;">
                        <input class="form-control" id="P_PRICE" type="text" name="p_price">
                     </div>
                  </div>
               </div>
            </div>

            <div class="col-12">
               <div class="col-md-6">
                  <div class="form-group">
                     <label for="P_COUNT"> 상품 재고 </label>
                     <div style="display: flex;">
                        <input class="form-control" id="P_COUNT" type="text" name="p_stock">
                     </div>
                  </div>
               </div>
            </div>

            <div class="col-12">
               <div class="col-md-6">
                  <div class="form-group">
                     <label for="P_OPTION"> 상품 옵션 </label>
                     <div style="display: flex;">
                        <input class="form-control" id="P_OPTION" type="text" name="p_option">
                     </div>
                  </div>
               </div>
            </div>
            
            <div class="col-12" style="text-align:center">
               <div class="col-md-6">
                  <div class="form-group">
                     <label for="p_category"> 상품 카테고리 </label>
                     <div style="display:flex;">

                        <select onchange="categoryChange(this)" style="width:270px; height:30px" name ="p_category1">
                           <option>대분류를 선택해주세요.</option>
                           <option value="목걸이">목걸이</option>
                           <option value="반지">반지</option>
                           <option value="시계">시계</option>
                           <option value="팔찌">팔찌</option>
                           <option value="헤어">헤어</option>
                           <option value="귀걸이">귀걸이</option>
                        </select> <select id="good" style="width:270px; margin-left:5px" name ="p_category2">
                           <option>소분류를 선택해주세요.</option>
                        </select>
                     </div>
                  </div>
               </div>
            </div>
            
            <div class="col-12">
               <div class="col-md-5">
                  <div class="form-group">
                     <label for="P_CONTENT"> 상품설명 </label>
                     <textarea class="form-control" rows="5"
                        style="resize: none; width:540px" name="p_content"></textarea>
                  </div>
               </div>
            </div>
          
            <div class="row">
                <div class="col-lg-12">
                   <div class="panel panel-default">
                      <div class="panel-heading">파일 업로드</div>
                      <div class="panel-body" style="list-style:none">
                         <div class="form-group uploadMainDiv">
                            메인 이미지 파일<input class = "mainFile" type=file name='uploadMainFile' multiple>
                         </div>
                         <div class="form-group uploadSubDiv">
                            서브 이미지 파일<input class = "SubFile" type=file name='uploadSubFile' multiple>
                         </div>
                         <div class='uploadMainResult'> 메인 이미지 업로드 창
                            <ul>
                               
                            </ul>
                         </div>
                         <div class='uploadSubResult'> 서브 이미지 업로드 창
                            <ul>
                               
                            </ul>
                         </div>
                      </div>
                      <!-- end panel-body -->
                   </div>
                   <!-- end panel -->
                </div>
            <div class="col-md-5" style="display:flex; margin-left:510px" >
               <div class="form-group" style="margin-left:5px">
                  <button type="submit" class="btn btn-outline btn-default btn-lg">등록</button>
               </div>
               <div class="form-group" style="margin-left:5px">
               <button id="regBtn" type="button" class="btn btn-outline btn-default btn-lg" onclick="self.location ='/admin/productList'">이전</button>
            </div>
            </div>
                <!-- end col-lg-12 -->
             </div>
            

            
            <input type="hidden" name="${_csrf.parameterName }" value="${_csrf.token }" > 
         </form>
      </div>
      <!-- /.row -->
   <!-- /.container-fluid -->
</section>
<!-- /#page-wrapper -->

<!-- /#wrapper -->

<script> //파일 업로드 스크립트
   $(document).ready(function(){
      var regex = new RegExp("(.*?)\.(exe|sh|zip|alz)$");
      var maxSize = 5242880;
      var uploadMainResult = $(".uploadMainResult ul");
      var uploadSubResult = $(".uploadSubResult ul");
      var cloneObj = $(".uploadDiv").clone();
      var formObj = $("form[role='form']");
      var csrfHeaderName = "${_csrf.headerName}";
      var csrfTokenValue = "${_csrf.token}";
      
      $("input[class='mainFile']").on("change",function(e){
         var formData = new FormData();
         var inputMainFile = $("input[name='uploadMainFile']");
         var Mainfiles = inputMainFile[0].files;
         console.log(Mainfiles);
         if(checkExtension(Mainfiles[0].name , Mainfiles[0].size) == 1){
            return false;
         }
         formData.append("uploadMainFile",Mainfiles[0]);
         console.log(Mainfiles[0]);
         $.ajax({                        //아약스로 메인파일 postmapper돌리기
            url:'/uploadMainProduct',
            processData : false,
            contentType : false,
            data : formData,
            beforeSend:function(xhr){
                xhr.setRequestHeader(csrfHeaderName, csrfTokenValue);
             },
            type : 'post',
            datatype:'json',
            success : function(result){
               console.log(result);
               $(".uploadMainDiv").html(cloneObj.html());
               showUploadedMainFile(result);
            }
         });
      });
      $("input[class='SubFile']").on("change",function(e){
         var formData = new FormData();
         var inputSubFile = $("input[name='uploadSubFile']");
         var Subfiles = inputSubFile[0].files;
         console.log(Subfiles);
         for(var i =0; i<Subfiles.length; i++)
         {
            if(checkExtension(Subfiles[i].name , Subfiles[i].size) == 1){
               return false;
            }
            formData.append("uploadFile",Subfiles[i]);
         }
         $.ajax({                        //아약스로 메인파일 postmapper돌리기
            url:'/uploadSubProduct',
            processData : false,
            contentType : false,
            data : formData,
            type : 'post',
            beforeSend:function(xhr){
                xhr.setRequestHeader(csrfHeaderName, csrfTokenValue);
             },
            datatype:'json',
            success : function(result){
               console.log(result);
               $(".uploadSubDiv").html(cloneObj.html());
               showUploadedSubFile(result);
            }
         });
      });
      
      $(".uploadMainResult").on("click","span",function(e){          //x 눌럿을때 딜리트
    	  var targetFile = $("#mainFileDelete").data("file");
         var type = $("#mainFileDelete").data("type");
         var targetLi = $(this).closest("li");
         console.log(targetFile);
         console.log(type);
         
         $.ajax({
            url:'/deleteFile',
            data : {fileName : targetFile, type : type},
            dataType : 'text',
            type : 'POST',
            beforeSend:function(xhr){
                xhr.setRequestHeader(csrfHeaderName, csrfTokenValue);
             },
            success : function(result){
               $(".uploadMainDiv").html(cloneObj.html());
               targetLi.remove();
            }
         });
      });
      $(".uploadSubResult").on("click","span",function(e){          //x 눌럿을때 딜리트
         var targetFile = $("#subFileDelete").data("file");
         var type = $("#subFileDelete").data("type");
         var targetLi = $(this).closest("li");
         console.log(targetFile);
         console.log(type);
         
         $.ajax({
            url:'/deleteFile',
            data : {fileName : targetFile, type : type},
            dataType : 'text',
            beforeSend:function(xhr){
                xhr.setRequestHeader(csrfHeaderName, csrfTokenValue);
             },
            type : 'POST',
            success : function(result){
               $(".uploadSubDiv").html(cloneObj.html());
               targetLi.remove();
            }
         });
      });
         
      $("button[type='submit']").on("click",function(e){      //파일 submit 눌럿을때 파라메터 추가하기
         e.preventDefault();
         var str ="";
         $(".uploadMainResult ul li").each(function(i,obj){
            var jobj = $(obj);
            console.dir(jobj);
            str += "<input type='hidden' name='filelist[0].p_filename' value='"+ jobj.data("p_filename")+"'>";
            str += "<input type='hidden' name='filelist[0].p_uuid' value='"+ jobj.data("p_uuid")+"'>";
            str += "<input type='hidden' name='filelist[0].p_filepath' value='"+ jobj.data("p_filepath")+"'>";
            str += "<input type='hidden' name='filelist[0].p_filetype' value='"+ jobj.data("p_filetype")+"'>";
         });
         $(".uploadSubResult ul li").each(function(i,obj){
            i++;
            var jobj = $(obj);
            console.dir(jobj);
            str += "<input type='hidden' name='filelist["+i+"].p_filename' value='"+ jobj.data("p_filename")+"'>";
            str += "<input type='hidden' name='filelist["+i+"].p_uuid' value='"+ jobj.data("p_uuid")+"'>";
            str += "<input type='hidden' name='filelist["+i+"].p_filepath' value='"+ jobj.data("p_filepath")+"'>";
            str += "<input type='hidden' name='filelist["+i+"].p_filetype' value='"+ jobj.data("p_filetype")+"'>";
            
         });
         formObj.append(str).submit(); 
      });
      
      function showUploadedMainFile(uploadResultArr){               //메인 이미지 보여주기
         var str = "";
         $(uploadResultArr).each(function(i, obj){
            if(!obj.p_filetype)
            {
               var fileCallPath = encodeURIComponent(obj.p_filepath + "/"+ obj.p_uuid + "_" + obj.p_filename);
               var fileLink = fileCallPath.replace(new RegExp(/\\/g),"/");
               alert(fileCallPath);
               str +="<li data-p_filepath='"+obj.p_filepath+"' data-p_uuid= '"+obj.p_uuid+"' data-p_filename='"+ obj.p_filename+"' data-p_filetype='"+obj.p_filetype+"'><div>";
               str +="<span>" + obj.fileName+"</span>";
               str += "<button id='mainFileDelete' type='button' data-file =\'"+fileCallPath+"\' data-type='file' class='btn btn-warning btn-circle'><i class='fa fa-times'></i></button><br>";
               str += "<img src='/resources/img/attach.png'></a>";
               str += "</div></li>";
            }
            else
            { 
               var fileCallPath = encodeURIComponent(obj.p_filepath + "/s_"+ obj.p_uuid + "_" + obj.p_filename);
               str+= "<li data-p_filepath='" + obj.p_filepath + "' data-p_uuid= '" + obj.p_uuid + "' data-p_filename='" + obj.p_filename + "' data-p_filetype='" + obj.p_filetype + "'><div>";
               str += "<span>"+ obj.p_filename + "</span>             ";
               str += "<button id='mainFileDelete' type='button' data-file =\'"+fileCallPath +"\' data-type ='image' class='btn btn-info btn-circle'><i class='fa fa-check'></i></button><br>";
               str += "<img src='/display?fileName="+fileCallPath+"'>";
               str += "</div></li>";
            } 
         });
         uploadMainResult.append(str);
      }
      
      function showUploadedSubFile(uploadResultArr){               //메인 이미지 보여주기
         var str = "";
         $(uploadResultArr).each(function(i, obj){
            if(!obj.p_filetype)
            {
               var fileCallPath = encodeURIComponent(obj.p_filepath + "/"+ obj.p_uuid + "_" + obj.p_filename);
               var fileLink = fileCallPath.replace(new RegExp(/\\/g),"/");
               str +="<li data-p_filepath='"+obj.p_filepath+"' data-p_uuid= '"+obj.p_uuid+"' data-p_filename='"+ obj.p_filename+"' data-p_filetype='"+obj.p_filetype+"'><div>";
               str +="<span>" + obj.p_filename;
               str += "<button type='button' data-file =\'"+fileCallPath+"\' data-type='file' class='btn btn-warning btn-circle'><i class='fa fa-times'></i></button><br>";
               str += "<img src='/resources/img/attach.png'></a>"+"</span>  ";
               str += "</div></li>";
            }
            else
            { 
               var fileCallPath = encodeURIComponent(obj.p_filepath +"/"+ obj.p_uuid + "_" + obj.p_filename);
               str+= "<li data-p_filepath='" + obj.p_filepath + "' data-p_uuid= '" + obj.p_uuid + "' data-p_filename='" + obj.p_filename + "' data-p_filetype='" + obj.p_filetype + "'><div>";
               str += "<span>"+ obj.p_filename + "</span>  ";
               str += "<button id='subFileDelete' type='button' data-file =\'"+fileCallPath+"\' data-type ='image' class='btn btn-info btn-circle'><i class='fa fa-check'> </i> </button> <br>";
               str += "<img src='/display?fileName="+fileCallPath+"'>";
               str += "</div></li>";
            } 
         });
         uploadSubResult.append(str);
      }
      
      function checkExtension(fileName, fileSize){             //파일 걸러내기
         if(fileSize >= maxSize){
            alert("파일 사이즈 초과");
            return 1;
         }
         if(regex.test(fileName)){
            alert("해당 종류의 파일은 업로드 할 수 없습니다.");
            return 1;
         }
      }
   });
   function showImage(fileCallPath)                           //이미지 클릭 -> 커지게
   {
      $(".bigPictureWrapper").css("display","flex").show();
      $(".bigPicture")
      .html("<img src='/display?fileName=" + encodeURI(fileCallPath)+"'>").animate({width:'100%',height:'100%'},1000);
   }
</script>


<script>   //파일 분류 스크립트
   function categoryChange(e) {
      var good_a = [ "골드" , "실버" , "초커" ,"써지컬"];
      var good_b = [ "골드", "실버" ,"써지컬"];
      var good_c = [ "가죽" , "메탈"];
      var good_d = [ "골드" , "실버", "게르마늄" ,"써지컬"];
      var good_e = [ "끈", "곱창밴드", "헤어벤드(머리띠)" , "반다나" , "헤어핀" , "집게핀" ];
      var target = document.getElementById("good");
      if (e.value == "목걸이")
         var d = good_a;
      else if (e.value == "반지")
          var d = good_b;
      else if (e.value == "시계")
         var d = good_c;
      else if (e.value == "팔찌")
          var d = good_d;
      else if (e.value == "헤어")
         var d = good_e;
      else if (e.value == "귀걸이")
          var d = good_b;
      target.options.length = 0;
      for (x in d) {
         var opt = document.createElement("option");
         opt.value = d[x];
         opt.innerHTML = d[x];
         target.appendChild(opt);
      }
   }
</script>
<%@ include file="../includes/adminfooter.jsp"%>