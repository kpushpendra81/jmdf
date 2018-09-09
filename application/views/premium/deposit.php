<div class="layout-content">
	<div class="layout-content-body">
	  <div class="row gutter-xs">
	    <div class="col-md-12">
	      <div class="card">
	        <div class="card-header">
	          <div class="card-actions" style="top: 35%;">
	            <a class="btn btn-sm btn-labeled arrow-info" onclick="window.history.back();" href="#">
	              <span class="btn-label">
	                <span class="icon icon-arrow-circle-left icon-lg icon-fw"></span>
	              </span>
	              Back
	            </a>
	          </div>
	          <strong>Premium Deposit</strong>
	        </div>
	        <div class="card-body">
	          
	          <div class="demo-form-wrapper">
	            <form id="demo-inputmask" class="form form-horizontal" method="post" enctype="multipart/form-data">

	              <div class="form-group">
	                <label class="col-sm-2 control-label" for="form-control-1">Premium No.</label>
	                <div class="col-sm-4">
                		<input id="form-control-1" class="form-control" name="premium_no" type="text" required="required" value="<?= set_value('premium_no'); ?>">
	                  <?= form_error('premium_no'); ?>
	              	</div>
	              </div>

	              <div class="form-group">
	                <label class="col-sm-2 control-label" for="form-control-3">Customer ID</label>
	                <div class="col-sm-2"><?= $customer->motherName; ?></div>

	                <label class="col-sm-2 control-label" for="form-control-1">Name</label>
	                <div class="col-sm-2"><?= $customer->name; ?></div>

	                <label class="col-sm-2 control-label" for="form-control-2">Father Name</label>
	                <div class="col-sm-2"><?= $customer->fatherName; ?></div>
	              </div>

	              <div class="form-group">

	                <label class="col-sm-2 control-label" for="form-control-4">Date of Birth</label>
	                <div class="col-sm-2"><?= $customer->dob; ?></div>
	              </div>

	              <div class="form-group">

	                <label class="col-sm-2 control-label" for="form-control-8">Address</label>
	                <div class="col-sm-2"><?= $customer->address; ?></div>
	                
	                <label class="col-sm-2 control-label" for="form-control-9">City</label>
	                <div class="col-sm-2"><?= $customer->city; ?></div>

	                <label class="col-sm-2 control-label" for="form-control-16">Aadhar No</label>
	                <div class="col-sm-2"><?= $customer->adhaarNo; ?></div>
	              </div>

	              <div class="form-group">

	                <label class="col-sm-2 control-label" for="form-control-11">Pincode</label>
	                <div class="col-sm-2"><?= $customer->pin; ?></div>

	                <label class="col-sm-2 control-label" for="form-control-14">Mobile</label>
	                <div class="col-sm-2"><?= $customer->mobile; ?></div>

	                <label class="col-sm-2 control-label" for="form-control-15">Email</label>
	                <div class="col-sm-2"><?= $customer->email; ?></div>
	              </div>

	              <div class="form-group">

	                <label class="col-sm-2 control-label" for="form-control-20">Branch</label>
	                <div class="col-sm-2"><?= $branchDetail->title; ?></div>

	                <label class="col-sm-2 control-label" for="form-control-21">Commitee</label>
	                <div class="col-sm-2"><?= $commiteeDetail->title ?></div>

	                <label class="col-sm-2 control-label" for="form-control-22">Plan Name</label>
	                <div class="col-sm-2"><?= $planDetail->title; ?></div>
	              </div>


	              <div class="form-group">

	                <label class="col-sm-2 control-label" for="form-control-37">Username</label>
	                <div class="col-sm-2"><?= $loginDetail->username; ?></div>

	              </div>

	              <div class="form-group">
	                <label class="col-sm-2 control-label" for="form-control-17">Image</label>
	                <div class="col-sm-2"><img src="<?= base_url() ?>assets/images/customer/<?= $customer->image; ?>" width="100" /></div>

	                <label class="col-sm-2 control-label" for="form-control-18">Signature</label>
	                <div class="col-sm-2"><img src="<?= base_url() ?>assets/images/customer/<?= $customer->signature; ?>" width="100" /></div>

	                <label class="col-sm-2 control-label" for="form-control-19">ID-Proof</label>
	                <div class="col-sm-2"><img src="<?= base_url() ?>assets/images/customer/<?= $customer->idProof; ?>" width="100" /></div>
	                
	              </div>

	            </form>
	          </div>

	        </div>
	      </div>
	    </div>
	  </div>
	</div>
</div>
