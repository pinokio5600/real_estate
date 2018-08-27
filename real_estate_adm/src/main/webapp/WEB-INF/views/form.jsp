<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
	    <meta charset="utf-8" />
	    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
	    <title>뿌르릉  - 관리자 사이트</title>
	    
	    <%@include file="include/common.jsp" %>   
	</head>
	<body>
	    <div id="wrapper">
	    	<%@include file ="include/left_gnb.jsp" %>
	        <!-- /. NAV SIDE  -->
	        <div id="page-wrapper">
	            <div id="page-inner">
	                <div class="row">
	                    <div class="col-md-12">
	                        <h1 class="page-head-line">등록</h1>
	                        <h1 class="page-subhead-line">등록 관리</h1>
	
	                    </div>
	                </div>
	                <!-- /. ROW  -->
	                <div class="row">
						<div class="col-md-6 col-sm-6 col-xs-12">
						   <div class="panel panel-info">
						       <div class="panel-heading">게시글 등록</div>
						       <div class="panel-body">
					              <div class="form-group">
					                  <label>제목</label>
					                  <input id="title" class="form-control" type="text">
					              </div>
					      		  <div class="form-group">
					                  <label style="display: block;">지역</label>
					                  <select id="doSelect" class="form-control" style="width:18%; display:inline;" onchange="javascript:changeRegion('doSelect','do',this.value)" >
						                  <c:choose>
							                  <c:when test="${!empty selDo}">							
						                  		  <option value="">선택</option>                  
		                                          <c:forEach var="doName" items="${selDo}" varStatus="i">
		                                          	<option value="${doName.region_do_val}">${doName.region_do}</option>
		                                          </c:forEach>			                                      
		                                      </c:when>
		                                      <c:otherwise>	                                          
			                                      <option value="">없음</option>
		                                      </c:otherwise>
	                                      </c:choose>
	                                  </select>
	                                  
                                      <select id="siSelect" name="siSelect" onchange="javascript:changeRegion('siSelect','si',this.value)" class="form-control" style="width:18%; display:inline;">
	                                      <c:choose>                                      	  
							                  <c:when test="${!empty selSi}">	
							                      <option>선택</option>						              
		                                      </c:when>
		                                      <c:otherwise>	                                          
			                                      <option value="" >없음</option>
		                                      </c:otherwise>
	                                      </c:choose>
                                      </select>
                                      <select id="guSelect" name="guSelect" class="form-control" style="width:18%; display:inline;">
	                                      <c:choose>                                      	  
							                  <c:when test="${!empty selGu}">	
							                      <option>선택</option>						              
		                                      </c:when>
		                                      <c:otherwise>	                                          
			                                      <option value="" >없음</option>
		                                      </c:otherwise>
	                                      </c:choose>
                                      </select>
					           		  <p class="help-block"> --  : 없는 경우 <br />ex)경기도 시흥시  -- 정왕동</p>
					              </div>
					              <div class="form-group">
					                  <label>거래 종류 : </label>
					                  <select id="tradeType" name="tradeType" class="form-control" style="width:25%; display:inline;">
					                  	<option value="">선택</option>
					                  	<option value="">월세</option>
					                  	<option value="">전세</option>
					                  	<option value="">매매</option>
					                  </select>
					                  &nbsp;&nbsp;&nbsp;
					                  <label>매물 종류 : </label>
					                  <select id="saleType" name="saleType" class="form-control" style="width:25%; display:inline;">
					                  	<option value="">선택</option>
					                  	<option value="">원룸</option>
					                  	<option value="">투룸</option>
					                  	<option value="">오피스텔</option>
					                  	<option value="">주택</option>
					                  	<option value="">아파트</option>
					                  	<option value="">토지</option>
					                  	<option value="">공장</option>
					                  </select>
					              </div>
				                  <div class="form-group">
					                  <label>내용</label>
					                  <textarea id="context" name="context" class="form-control" rows="10"></textarea>
					              </div>					
					              <form method="post" enctype="multipart/form-data" action="imgup.jsp">
									  <input type="file" name="file1" size=40 style="margin-bottom:15px;" />
									  <input type="file" name="file2" size=40 style="margin-bottom:15px;" />
								  </form>
					              <button type="submit" class="btn btn-info">글 등록</button>						         
						      </div>
						   </div>
						</div>
						<div class="col-md-6 col-sm-6 col-xs-12">
						  <div class="panel panel-danger">
						     <div class="panel-heading">지역 등록</div>
						     <div class="panel-body">
						         <form role="form" id="do" action="regionReg">					                     
						              <div class="form-group">					        
				                         <label>도:</label>
				                         <input id="region_do" name="region_do" class="form-control" type="text" style="width:15%; display:inline;" />
				                         <button type="button" onclick="addRegion('addDo');" class="btn btn-danger" style="right:40px; position:absolute;">도 등록</button>		
						              </div>			                      			
						         </form>
						         <form role="form" id="si" action="regionReg">					                     
						              <div class="form-group">
				                         <label>도:</label>
				                         <select id="region_do_val" name="region_do_val" class="form-control" style="width:18%; display:inline;">
					                         <c:choose>
								                  <c:when test="${!empty selDo}">	
								                  	  <option value="">선택</option>						                  
			                                          <c:forEach var="doName" items="${selDo}" varStatus="i">
			                                          	 <option value="${doName.region_do_val}">${doName.region_do}</option>
			                                          </c:forEach>			                                      
			                                      </c:when>
			                                      <c:otherwise>	                                          
		                                          		 <option value="">없음</option>
			                                      </c:otherwise>
		                                     </c:choose>	
		                                 </select>		                       
				                         <label>시:</label>
				                         <input id="region_si" name="region_si" class="form-control" type="text" style="width:15%; display:inline;" />			                     
				                         <button type="button" onclick="addRegion('addSi');" class="btn btn-danger" style="right:40px; position:absolute;">시 등록</button>		
						              </div>			                      			
						         </form>
						         <form role="form" id="gu" action="regionReg">					                     
						              <div class="form-group">
				                         <label>도:</label>
				                         <select id="region_do_val" name="region_do_val" onchange="javascript:changeRegion('region_do_val','do',this.value)" class="form-control" style="width:18%; display:inline;">
					                         <c:choose>
								                  <c:when test="${!empty selDo}">
								                  	  <option value="">선택</option>								                  
			                                          <c:forEach var="doName" items="${selDo}" varStatus="i">
			                                          	 <option value="${doName.region_do_val}">${doName.region_do}</option>
			                                          </c:forEach>			                                      
			                                      </c:when>
			                                      <c:otherwise>	                                          
		                                          		 <option value="">없음</option>
			                                      </c:otherwise>
		                                     </c:choose>	
		                                 </select>
		                                 <label>시:</label>
				                         <select id="region_si_val" name="region_si_val" class="form-control" style="width:18%; display:inline;">
					                        <c:choose>                                      	  
								                  <c:when test="${!empty selSi}">	
								                      <option>선택</option>						              
			                                      </c:when>
			                                      <c:otherwise>	                                          
				                                          	<option value="" >없음</option>
			                                      </c:otherwise>
		                                      </c:choose>
		                                 </select>		                                        
				                         <label>구:</label>
				                         <input id="region_gu" name="region_gu" class="form-control" type="text" style="width:15%; display:inline;" />			                     
				                         <button type="button" onclick="addRegion('addGu');" class="btn btn-danger" style="right:40px; position:absolute;">구 등록</button>		
						              </div>			                      			
						         </form>
						     </div>
						</div>
					</div>
	        	 </div>
	             <!--/.ROW-->
	             <div class="row">
	                 <div class="col-md-6 col-sm-6 col-xs-12">
	                 <div class="panel panel-primary">
	                        <div class="panel-heading">
	                           FORM ELEMENTS
	                        </div>
	                        <div class="panel-body">	                        
	                            <div class="form-group">
	                                            <label>Multiple Select Example</label>
	                                            <select multiple="" class="form-control">
	                                                <option>One Vale</option>
	                                                <option>Two Vale</option>
	                                                <option>Three Vale</option>
	                                                <option>Four Vale</option>
	                                            </select>
	                                        </div>
	                            <hr>
	                            <div class="form-group">
	                                            <label>Checkboxes</label>
	                                            <div class="checkbox">
	                                                <label>
	                                                    <input type="checkbox" value="">Checkbox Example One
	                                                </label>
	                                            </div>
	                                            <div class="checkbox">
	                                                <label>
	                                                    <input type="checkbox" value="">Checkbox Example Two
	                                                </label>
	                                            </div>
	                                            <div class="checkbox">
	                                                <label>
	                                                    <input type="checkbox" value="">Checkbox Example Three
	                                                </label>
	                                            </div>
	                                  <div class="checkbox">
	                                                <label>
	                                                    <input type="checkbox" value="">Checkbox Example Four
	                                                </label>
	                                            </div>
	                                        </div>
	                            <hr>
	                            <div class="form-group">
	                                            <label>Radio Button Examples</label>
	                                            <div class="radio">
	                                                <label>
	                                                    <input type="radio" name="optionsRadios" id="optionsRadios1" value="option1" checked="">Radio Example One
	                                                </label>
	                                            </div>
	                                            <div class="radio">
	                                                <label>
	                                                    <input type="radio" name="optionsRadios" id="optionsRadios2" value="option2">Radio Example Two
	                                                </label>
	                                            </div>
	                                            <div class="radio">
	                                                <label>
	                                                    <input type="radio" name="optionsRadios" id="optionsRadios3" value="option3">Radio Example Three
	                                                </label>
	                                            </div>
	                                        </div>
	                            </div>
	                        </div>
	                            </div>
	            <div class="col-md-6 col-sm-6 col-xs-12">
	               <div class="panel panel-default">
	                        <div class="panel-heading">
	                           OTHER ELEMENTS FOR FORM
	                        </div>
	                        <div class="panel-body">
	                            
	                            <form role="form">
	                                Some Message Examples
	                                <br />
	                                        <div class="form-group has-success">
	                                            <label class="control-label" for="success">SUCCESS EXAMPLE</label>
	                                            <input type="text" class="form-control" id="success" />
	                                        </div>
	                                        <div class="form-group has-warning">
	                                            <label class="control-label" for="warning">WARNING EXAMPLE</label>
	                                            <input type="text" class="form-control" id="warning" />
	                                        </div>
	                                        <div class="form-group has-error">
	                                            <label class="control-label" for="error">ERROR EXAMPLE</label>
	                                            <input type="text" class="form-control" id="error" />
	                                        </div>
	                                    </form>
	                            <hr>
	                            Other Group Examples
	                            <br>
	                            <form role="form">
	                                  <div class="input-group">
	      <span class="form-group input-group-btn">
	        <button class="btn btn-default" type="button">Go!</button>
	      </span>
	      <input type="text" class="form-control" />
	    </div>
	<br />
	                                           <div class="input-group">
	     
	      <input type="text" class="form-control" />
	                                                <span class="form-group input-group-btn">
	        <button class="btn btn-default" type="button">Go!</button>
	      </span>
	    </div>
	                                         </form>
	                            <hr>
	                            <form role="form">
	                                            <div class="form-group">
	                                                <label for="disabledInput">Disabled input</label>
	                                                <input class="form-control" id="disabledInput" type="text" placeholder="Disabled input" disabled="">
	                                            </div>
	                                            
	                                            
	                                    </form>
	                            <hr />
	                            For more customization for this template or its components please visit official bootstrap website i.e getbootstrap.com or
	                            <a href="http://getbootstrap.com/components/" target="_blank">click here</a> 
	                            </div>
	                        </div>
	                            </div>
	
	        </div>
	
	            </div>
	            <!-- /. PAGE INNER  -->
	        </div>
	        <!-- /. PAGE WRAPPER  -->
	    </div>
	    <!-- /. WRAPPER  -->
	    <div id="footer-sec">
	        &copy; 2014 YourCompany | Design By : <a href="http://www.binarytheme.com/" target="_blank">BinaryTheme.com</a>
	    </div>
	</body>
	<script type="text/javascript">
		function addRegion(type){
			if(confirm("등록하시겠습니까?")){
				if(type=="addDo"){
					$("form#do").submit();
				}else if(type=="addSi"){
					$("form#si").submit();
				}else if(type=="addGu"){
					$("form#gu").submit();
				}
			}
		}
		
		function changeRegion(idName, type, region_val){
			if(type=="do"){
				$.ajax({
					url:"/adm/selectChange",
					type:'post',
					data: {do_val:region_val, type:"do"},
					dataType: "json",
					success : function(responseData) {	
						if(idName == "doSelect"){
							if(responseData.selSi2.length>0){
								//alert(responseData.selSi2.length);
								$('#siSelect').find("option").remove();
								$("#siSelect").append("<option value=''>선택</option>");	
								for(var idx=0; idx<responseData.selSi2.length; idx++) {
									 $("#siSelect").append("<option value='" + responseData.selSi2[idx].region_si_val + "'>"+responseData.selSi2[idx].region_si+"</option>");	
								}
							}else{
								//alert("인식X");
								$('#siSelect').find("option").remove();
								$("#siSelect").append("<option value=''>없음</option>");	
							}
						}else if(idName == "region_do_val"){
							if(responseData.selSi2.length>0){
								$('#region_si_val').find("option").remove();
								$("#region_si_val").append("<option value=''>선택</option>");	
								for(var idx=0; idx<responseData.selSi2.length; idx++) {
									 $("#region_si_val").append("<option value='" + responseData.selSi2[idx].region_si_val + "'>"+responseData.selSi2[idx].region_si+"</option>");	
								}
							}else{
								$('#region_si_val').find("option").remove();
								$("#region_si_val").append("<option value=''>없음</option>");	
							}
						}
					},
					error: function(request,status,error){
				        //alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
				       }
				});
			}else if(type="si"){
				var doSelect = $("#doSelect option:selected").val();
				$.ajax({
					url:"/adm/selectChange",
					type:'post',
					data: {do_val:doSelect, si_val:region_val, type:"si"},
					dataType: "json",
					success : function(responseData) {	
						if(idName == "siSelect"){
							if(responseData.selGu.length>0){
								$('#guSelect').find("option").remove();
								$("#guSelect").append("<option value=''>선택</option>");	
								for(var idx=0; idx<responseData.selGu.length; idx++) {
									 $("#guSelect").append("<option value='" + responseData.selGu[idx].region_gu_val + "'>"+responseData.selGu[idx].region_gu+"</option>");	
								}
							}else{
								//alert("인식X");
								$('#guSelect').find("option").remove();
								$("#guSelect").append("<option value=''>없음</option>");	
							}
						}
					},
					error: function(request,status,error){
				        //alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
				       }
				});
			}
		}
	</script>

</html>


