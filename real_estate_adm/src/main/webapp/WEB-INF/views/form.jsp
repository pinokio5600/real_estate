<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="include/common.jsp" %>   

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>뿌르릉  - 관리자 사이트</title>
</head>
<body>
    <div id="wrapper">
    	<%@include file ="include/left_gnb.jsp" %>
        <!-- /. NAV SIDE  -->
        <div id="page-wrapper">
            <div id="page-inner">
                <div class="row">
                    <div class="col-md-12">
                        <h1 class="page-head-line">글 등록</h1>
                        <h1 class="page-subhead-line">새 게시글 등록</h1>

                    </div>
                </div>
                <!-- /. ROW  -->
                <div class="row">
					<div class="col-md-6 col-sm-6 col-xs-12">
					   <div class="panel panel-info">
					       <div class="panel-heading">
					          BASIC FORM
					       </div>
					       <div class="panel-body">
					           <form role="form">
					              <div class="form-group">
					                  <label>제목</label>
					                  <input id="title" class="form-control" type="text">
					              </div>
					      		  <div class="form-group">
					                  <label>지역</label>
					                  <select class="form-control">
                                          <option>원미구</option>
                                          <option>Two Vale</option>
                                          <option>Three Vale</option>
                                          <option>Four Vale</option>
                                      </select>
					           		  <p class="help-block">Help text here.</p>
					              </div>
				                  <div class="form-group">
					                  <label>Text area</label>
					                  <textarea class="form-control" rows="3"></textarea>
					              </div>					
					              <button type="submit" class="btn btn-info">Send Message </button>
					          </form>
					      </div>
					   </div>
					</div>
					<div class="col-md-6 col-sm-6 col-xs-12">
					  <div class="panel panel-danger">
					     <div class="panel-heading">
					        SINGUP FORM
					     </div>
					     <div class="panel-body">
					         <form role="form">					                     
					              <div class="form-group">
			                         <label>Enter Email</label>
			                         <input class="form-control" type="text">
					                 <p class="help-block">Help text here.</p>
					              </div>
					              <div class="form-group">
			                         <label>Enter Password</label>
			                         <input class="form-control" type="password">
					                 <p class="help-block">Help text here.</p>
					             </div>
					             <div class="form-group">
			                         <label>Re Type Password </label>
			                         <input class="form-control" type="password">
			                 		 <p class="help-block">Help text here.</p>
					             </div>
					              
			                     <button type="submit" class="btn btn-danger">Register Now </button>
					
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
                                            <label>Select Example</label>
                                            <select class="form-control">
                                                <option>One Vale</option>
                                                <option>Two Vale</option>
                                                <option>Three Vale</option>
                                                <option>Four Vale</option>
                                            </select>
                                        </div>
                            <hr>
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
</html>
