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
	          <strong>New Branch</strong>
	        </div>
	        <div class="card-body">

	          <div class="demo-form-wrapper">
	            <form  id="demo-inputmask" class="form form-horizontal" method="post" action="<?= base_url(); ?>newbranch.html">

	              <div class="form-group">
	                <label class="col-sm-2 control-label" for="form-control-1">Branch Title</label>
	                <div class="col-sm-4">
	                  <input id="form-control-1" class="form-control" name="title" type="text">
	                </div>

	                <label class="col-sm-2 control-label" for="form-control-1">Full Address</label>
	                <div class="col-sm-4">
	                  <input id="form-control-1" class="form-control" name="address" type="text">
	                </div>
	              </div>

	              <div class="form-group">
	                <label class="col-sm-2 control-label" for="form-control-1">City</label>
	                <div class="col-sm-4">
	                  <input id="form-control-1" class="form-control" name="city" type="text">
	                </div>

	                <label class="col-sm-2 control-label" for="form-control-1">State</label>
	                <div class="col-sm-4">
	                  <input id="form-control-1" class="form-control" name="state" type="text">
	                </div>
	              </div>

	              <div class="form-group">
	                <label class="col-sm-2 control-label" for="form-control-1">Area Pin Code</label>
	                <div class="col-sm-4">
	                  <input id="form-control-1" class="form-control" type="text" name="pincode" minlength="6" maxlength="6" required="required" title="Pincode only accepts Numbers." pattern="[0-9]{6}">
	                </div>

	                <label class="col-sm-2 control-label" for="form-control-1">Phone Number</label>
	                <div class="col-sm-4">
	                  <input id="form-control-1" class="form-control" type="text"minlength="6" name="phone" maxlength="10" title="Phone Number accepts 6-10 Numbers." >
	                </div>
	              </div>

	              <div class="form-group">
	                <label class="col-sm-2 control-label" for="form-control-1">Fax Number</label>
	                <div class="col-sm-4">
	                  <input id="form-control-1" class="form-control" type="text" name="fax" minlength="6" maxlength="10" title="Fax Number accepts 6-10 Numbers.">
	                </div>

	                <label class="col-sm-2 control-label" for="form-control-1">Mobile Number</label>
	                <div class="col-sm-4">
	                  <input id="form-control-1" class="form-control" type="text" name="mobile" minlength="10" maxlength="10" required="required" title="Phone Number accepts 10 Numbers." pattern="[0-9]{10}">
	                </div>
	              </div>

	              <div class="form-group gutter-xs">
	                <label class="col-sm-2 control-label" for="form-control-1">Email</label>
	                <div class="col-sm-4">
	                  <input id="form-control-9" class="form-control" type="text" name="email" data-inputmask="'alias': 'email'">
	                </div>

	                <label class="col-sm-2 control-label" for="form-control-1">Financial Start Date (FSD)</label>
	                <div class="col-sm-4">
	                  <input id="form-control-9" class="form-control" type="date" name="fsd">
	                </div>

	              </div>

	              <div class="form-group gutter-xs">
	                <label class="col-sm-2 control-label" for="form-control-1">&nbsp;</label>
	                <div class="col-sm-4 center">
	                  <input type="submit" value="Save Branch" class="btn btn-primary">
	                </div>
	              </div>

	            </form>
	          </div>

	        </div>
	      </div>
	    </div>
	  </div>
	</div>
</div>
