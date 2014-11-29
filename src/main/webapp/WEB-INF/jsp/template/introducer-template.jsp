<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@page pageEncoding="utf-8" %>


<div class="box-body">
    <div class="form-group col-md-4">
        <label class="form-label" for="introducerNameId">Name</label>
        <input type="text" name="introducerName" class="form-control width-3" id="introducerNameId" placeholder="Name">
    </div>
    <div class="form-group col-md-4">
        <label class="form-label" for="introducerAccountNoId">Account No</label>
        <input type="text" name="introducerAccountNo" class="form-control width-3" id="introducerAccountNoId" placeholder="Account no">
    </div>
    <div class="form-group col-md-4">
        <label class="form-label" for="introducerContactNoId">Contact No</label>
        <input type="text" name="introducerContactNo" class="form-control width-3" id="introducerContactNoId" placeholder="Contact No">
    </div>
	<div class="clearfix"></div>
    <!-- Upload Introducer Photo & Signature -->
	<div class="form-group col-md-4">
	    <label class="form-label" for="introducerPhototId">Upload Photo</label>
	    <input type="file" name="introducerPhotot" id="introducerPhototId">
	    <br>
	    <label class="form-label" for="introducerSignatureImageId">Upload Signature</label>
	    <input type="file" name="introducerSignatureImage" id="introducerSignatureImageId">	
	</div>
	<div class="form-group col-md-4">
	    <label class="form-label" for="introducerPhototPreviewId">Photo Preview</label>
	    <div>
	        <img name="introducerPhototPreview" id="introducerPhototPreviewId" style="width: 50%; height: 120px;" src="resources/images/avatar2.png" alt="Photo of Introducer"/>
	     </div>
	</div>                                        
	<div class="form-group col-md-4">
	    <label class="form-label" for="introducerSignaturePreviewId">Signature Preview</label>
	    <div>
	        <img name="introducerSignaturePreview" class="width-3" id="introducerSignaturePreviewId" style="height: 60px;" src="resources/images/signature.png" alt="Signature of Introducer" />
	    </div>
	</div>   
<!-- Photo upload ends -->
    <div class="clearfix"></div>                                        
</div><!-- /.box-body -->
	