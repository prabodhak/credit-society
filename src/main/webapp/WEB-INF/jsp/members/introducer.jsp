<%@ taglib uri="http://www.springframework.org/tags" prefix="s" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!-- Right side column. Contains the navbar and content of the page -->
<aside class="right-side">
	<section class="content" style="padding-bottom:0px;">
		<div class="row">
			<!-- left column -->
			<div class="col-md-12">
				<!-- general form elements -->
				<div class="box box-primary">
					<div class="box-header" style="padding:2px;">
						<a class="btn btn-app" style="margin:0px;"> <i class="fa fa-edit"></i> Add
						</a> <a class="btn btn-app" style="margin:0px;"> <i class="fa fa-edit"></i> Edit
						</a> <a class="btn btn-app" style="margin:0px;"> <i class="fa fa-edit"></i> View
						</a> <a class="btn btn-app" style="margin:0px;"> <i class="fa fa-edit"></i>
							Delete
						</a>
					</div>
				</div>
			</div>
		</div>
	</section>
<!-- Introducer Details -->
	<section class="content">
		<div class="row">
			<!-- left column -->
			<div class="col-md-12">
				<div class="box box-solid box-primary">
					<div class="box-header">
						<h3 class="box-title">Introducer Details</h3>
						<div class="box-tools pull-right">
							<button class="btn btn-primary btn-sm" data-widget="collapse">
								<i class="fa fa-minus"></i>
							</button>
						</div>
					</div>
					<!-- form start -->
					<form:form role="form" modelAttribute="member" action="" method="post">
						<div class="box-body">
							<div class="form-group col-md-4">
								<label class="form-label" for="introducerNameId">Name</label> <form:input
									type="text" name="introducerName" class="form-control width-3"
									id="introducerNameId" placeholder="Name" path="introducer"/>
							</div>
							<div class="form-group col-md-4">
								<label class="form-label" for="introducerAccountNoId">Account
									No</label> <form:input type="text" name="introducerAccountNo"
									class="form-control width-3" id="introducerAccountNoId"
									placeholder="Account no" path="introducer.accountNumber"/>
							</div>
							<div class="form-group col-md-4">
								<label class="form-label" for="introducerContactNoId">Contact
									No</label> <form:input type="text" name="introducerContactNo"
									class="form-control width-3" id="introducerContactNoId"
									placeholder="Contact No" path="introducer.mobile"/>
							</div>
							<div class="clearfix"></div>
							<!-- Upload Introducer Photo & Signature -->
							<div class="form-group col-md-4">
								<label class="form-label" for="introducerPhototId">Upload
									Photo</label> <input type="file" name="introducerPhotot"
									id="introducerPhototId"> </br>
								</br> <label class="form-label" for="introducerSignatureImageId">Upload
									Signature</label> <input type="file" name="introducerSignatureImage"
									id="introducerSignatureImageId">
							</div>
							<div class="form-group col-md-4">
								<label class="form-label" for="introducerPhototPreviewId">Photo
									Preview</label>
								<div>
									<img name="introducerPhototPreview"
										id="introducerPhototPreviewId"
										style="width: 50%; height: 120px;"
										src="http://www.html.am/images/image-codes/milford_sound_t.jpg"
										alt="Photo of Introducer" />
								</div>
							</div>
							<div class="form-group col-md-4">
								<label class="form-label" for="introducerSignaturePreviewId">Signature
									Preview</label>
								<div>
									<img name="introducerSignaturePreview" class="width-3"
										id="introducerSignaturePreviewId" style="height: 60px;"
										src="http://www.html.am/images/image-codes/milford_sound_t.jpg"
										alt="Signature of Introducer" />
								</div>
							</div>
							<!-- Photo upload ends -->
							<div class="clearfix"></div>
						</div>
						<!-- /.box-body -->
						<div class="box-footer next-btn">
							<button type="submit" class="btn btn-primary">Next</button>
						</div>
					</form:form>
				</div>
				<!-- /.box -->
			</div>
		</div>
	</section>
	<!-- Introducer Details Ends -->
</aside>
<!-- /.right-side -->	