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
	          <strong>New Customer</strong>
	        </div>
	        <div class="card-body">
	          
	          <div class="demo-form-wrapper">
	            <form  id="demo-inputmask" class="form form-horizontal" method="post">

	              <div class="form-group">
	                <label class="col-sm-2 control-label" for="form-control-1">Name</label>
	                <div class="col-sm-4">
	                  <input id="form-control-1" class="form-control" name="name" type="text" required="required" value="<?= set_value('name'); ?>">
	                  <?= form_error('name'); ?>
	                </div>

	                <label class="col-sm-2 control-label" for="form-control-2">Father Name</label>
	                <div class="col-sm-4">
	                  <input id="form-control-2" class="form-control" name="fatherName" type="text" required="required" value="<?= set_value('fatherName'); ?>">
	                  <?= form_error('fatherName'); ?>
	                </div>
	              </div>

	              <div class="form-group">
	                <label class="col-sm-2 control-label" for="form-control-3">Mother Name</label>
	                <div class="col-sm-4">
	                  <input id="form-control-3" class="form-control" name="motherName" type="text" required="required" value="<?= set_value('motherName'); ?>">
	                  <?= form_error('motherName'); ?>
	                </div>

	                <label class="col-sm-2 control-label" for="form-control-4">Date of Birth</label>
	                <div class="col-sm-4">
	                  <input id="form-control-4" class="form-control" name="dob" type="text" required="required" value="<?= set_value('dob'); ?>" data-inputmask="'alias': 'dd-mm-yyyy'">
	                  <?= form_error('dob'); ?>
	                </div>
	              </div>

	              <div class="form-group">
	                <label class="col-sm-2 control-label" for="form-control-5">Gender</label>
	                <div class="col-sm-4">
	                  <select class="form-control" name="gender" required="required">
	                  	<option>-Select Gender-</option>
	                  	<?php foreach ($gender as $key => $value) {
	                  		$sel = set_value('gender') == $value ? " selected" : "";
	                  		echo '<option value="'.$value.'" '.$sel.'>'.$value.'</option>';
	                  	}
	                  	?>
	                  </select>
	                  <?= form_error('gender'); ?>
	                </div>

	                <label class="col-sm-2 control-label" for="form-control-6">Category</label>
	                <div class="col-sm-4">
	                  <select class="form-control" name="category" required="required">
	                  	<option>-Select Category-</option>
	                  	<?php foreach ($category as $key => $value) {
	                  		$sel = set_value('category') == $value ? " selected" : "";
	                  		echo '<option value="'.$value.'" '.$sel.'>'.$value.'</option>';
	                  	}
	                  	?>
	                  </select>
	                  <?= form_error('category'); ?>
	                </div>
	              </div>

	              <div class="form-group">
	                <label class="col-sm-2 control-label" for="form-control-7">Qualification</label>
	                <div class="col-sm-4">
	                  <input id="form-control-7" class="form-control" name="qualification" type="text" required="required" value="<?= set_value('qualification'); ?>">
	                  <?= form_error('qualification'); ?>
	                </div>

	                <label class="col-sm-2 control-label" for="form-control-8">Address</label>
	                <div class="col-sm-4">
	                  <input id="form-control-8" class="form-control" name="address" type="text" required="required" value="<?= set_value('address'); ?>">
	                  <?= form_error('address'); ?>
	                </div>
	              </div>

	              <div class="form-group">
	                <label class="col-sm-2 control-label" for="form-control-9">City</label>
	                <div class="col-sm-4">
	                  <input id="form-control-9" class="form-control" name="city" type="text" required="required" value="<?= set_value('city'); ?>">
	                  <?= form_error('city'); ?>
	                </div>

	                <label class="col-sm-2 control-label" for="form-control-10">State</label>
	                <div class="col-sm-4">
	                  <input id="form-control-10" class="form-control" name="state" type="text" required="required" value="<?= set_value('state'); ?>">
	                  <?= form_error('state'); ?>
	                </div>
	              </div>

	              <div class="form-group">
	                <label class="col-sm-2 control-label" for="form-control-11">Pincode</label>
	                <div class="col-sm-4">
	                  <input id="form-control-11" class="form-control" type="text" name="pin" minlength="6" maxlength="6" required="required" title="Pincode only accepts Numbers." pattern="[0-9]{6}" value="<?= set_value('pin'); ?>">
	                  <?= form_error('pin'); ?>
	                </div>

	                <label class="col-sm-2 control-label" for="form-control-12">Country</label>
	                <div class="col-sm-4">
	                  <input id="form-control-12" class="form-control" name="country" type="text" required="required" value="<?= set_value('country'); ?>">
	                  <?= form_error('country'); ?>
	                </div>
	              </div>

	              <div class="form-group">
	                <label class="col-sm-2 control-label" for="form-control-13">Phone</label>
	                <div class="col-sm-4">
	                  <input id="form-control-13" class="form-control" type="text"minlength="6" name="phone" maxlength="10" title="Phone Number accepts 6-10 Numbers." value="<?= set_value('phone'); ?>" >
	                  <?= form_error('phone'); ?>
	                </div>

	                <label class="col-sm-2 control-label" for="form-control-14">Mobile</label>
	                <div class="col-sm-4">
	                  <input id="form-control-14" class="form-control" type="text" name="mobile" minlength="10" maxlength="10" required="required" title="Phone Number accepts 10 Numbers." pattern="[0-9]{10}" value="<?= set_value('mobile'); ?>">
	                  <?= form_error('mobile'); ?>
	                </div>
	              </div>

	              <div class="form-group">
	                <label class="col-sm-2 control-label" for="form-control-15">Email</label>
	                <div class="col-sm-4">
	                  <input id="form-control-15" class="form-control" type="text" name="email" data-inputmask="'alias': 'email'" value="<?= set_value('email'); ?>">
	                  <?= form_error('email'); ?>
	                </div>

	                <label class="col-sm-2 control-label" for="form-control-16">Aadhar No</label>
	                <div class="col-sm-4">
	                  <input id="form-control-16" class="form-control" name="aadharNo" type="text" required="required" value="<?= set_value('aadharNo'); ?>">
	                  <?= form_error('aadharNo'); ?>
	                </div>
	              </div>

	              <div class="form-group">
	                <label class="col-sm-2 control-label" for="form-control-17">Image</label>
	                <div class="col-sm-4">
	                  <input id="form-control-17" class="form-control" name="image" type="file" required="required" value="<?= set_value('image'); ?>">
	                  <?= form_error('image'); ?>
	                </div>

	                <label class="col-sm-2 control-label" for="form-control-18">Signature</label>
	                <div class="col-sm-4">
	                  <input id="form-control-18" class="form-control" name="signature" type="file" required="required" value="<?= set_value('signature'); ?>">
	                  <?= form_error('signature'); ?>
	                </div>
	              </div>

	              <div class="form-group">
	                <label class="col-sm-2 control-label" for="form-control-19">ID-Proof</label>
	                <div class="col-sm-4">
	                  <input id="form-control-19" class="form-control" name="idProof" type="file" required="required" value="<?= set_value('idProof'); ?>">
	                  <?= form_error('idProof'); ?>
	                </div>
	                
	              </div>

	              <div class="divider divider-horizontal">
                  <div class="divider-content text-primary"><h4>INVESTMENT PLAN DETAIL</h4></div>
                </div>

                <div class="form-group">
	                <label class="col-sm-2 control-label" for="form-control-20">Branch</label>
	                <div class="col-sm-4">
	                  <select id="demo-select2-1" class="form-control" name="branchID" onchange="getComittee(this.value)" required="required">
	                	<option>- Select Branch -</option>
	                	<?php 
	                		foreach ($branch as $key => $value):
	                			echo '<option value="'.$value->id.'">'.$value->title.'</option>';
	                		endforeach;
	                	?>
	                  </select>
	                  <?= form_error('branchID'); ?>
	                </div>

	                <label class="col-sm-2 control-label" for="form-control-21">Commitee</label>
	                <div class="col-sm-4">
		                <select id="demo-select2-2" class="form-control" name="committee" required="required"></select>
	                  	<?= form_error('employeeID'); ?>
	                </div>
	              </div>

	              <div class="form-group">
	                <label class="col-sm-2 control-label" for="form-control-22">Plan Name</label>
	                <div class="col-sm-4">
	                  <select id="demo-select2-3" class="form-control" name="planID" onchange="getPlan(this.value)" required="required">
	                	<option>- Select Plan -</option>
	                	<?php 
	                		foreach ($plans as $key => $value):
	                			echo '<option value="'.$value->id.'">'.$value->title.'</option>';
	                		endforeach;
	                	?>
	                  </select>
	                  <?= form_error('planID'); ?>
	                </div>

	                <label class="col-sm-2 control-label" for="form-control-1">Duration</label>
	                <div class="col-sm-4">
		                <select id="demo-select2-4" class="form-control" name="duration" required="required"></select>
	                  <?= form_error('employeeID'); ?>
	                  <input type="hidden" id="planDetail">
	                </div>
	              </div>

	              <span id="fd" style="display: none;">
		              <div class="form-group">
		                <label class="col-sm-2 control-label" for="form-control-23">Investment Amount</label>
		                <div class="col-sm-4">
		                	<input id="form-control-23" class="form-control" name="investAmount" type="number" required="required" value="<?= set_value('username'); ?>">
		                  <?= form_error('investAmount'); ?>
		                </div>

		                <label class="col-sm-2 control-label" for="form-control-24">Meturity Amount</label>
		                <div class="col-sm-4">
			                <input id="form-control-25" class="form-control" name="meturtyAmount" type="number" required="required" value="<?= set_value('username'); ?>">
		                  <?= form_error('meturtyAmount'); ?>
		                </div>
		              </div>

		              <div class="form-group">
		                <label class="col-sm-2 control-label" for="form-control-26">Applied Interest Rate</label>
		                <div class="col-sm-4">
		                	<input id="form-control-26" readonly="true" name="appliedInterest" class="form-control" type="text">
		                  <?= form_error('appliedInterest'); ?>
		                </div>
		              </div>

	              </span>

	              <span id="rd" style="display: none;">
		              <div class="form-group">
		                <label class="col-sm-2 control-label" for="form-control-27">Investment Monthly Amount</label>
		                <div class="col-sm-4">
		                	<input id="form-control-27" class="form-control" name="investAmount" type="number" required="required" value="<?= set_value('username'); ?>">
		                  <?= form_error('investAmount'); ?>
		                </div>

		                <label class="col-sm-2 control-label" for="form-control-28">Total Amount</label>
		                <div class="col-sm-4">
			                <input id="form-control-28" class="form-control" name="meturtyAmount" type="number" required="required" value="<?= set_value('username'); ?>">
		                  <?= form_error('meturtyAmount'); ?>
		                </div>
		              </div>

		              <div class="form-group">
		                <label class="col-sm-2 control-label" for="form-control-29">Meturity Amount</label>
		                <div class="col-sm-4">
		                	<input id="form-control-29" class="form-control" name="investAmount" type="text" required="required" value="<?= set_value('username'); ?>">
		                  <?= form_error('investAmount'); ?>
		                </div>
		                
		                <label class="col-sm-2 control-label" for="form-control-30">Applied Interest Rate</label>
		                <div class="col-sm-4">
		                	<input id="form-control-30" readonly="true" name="appliedInterest" class="form-control" type="text">
		                  <?= form_error('appliedInterest'); ?>
		                </div>
		              </div>

		              
	              </span>

	              <span id="mis" style="display: none;">
		              <div class="form-group">
		                <label class="col-sm-2 control-label" for="form-control-31">Investment Amount</label>
		                <div class="col-sm-4">
		                	<input id="form-control-31" class="form-control" name="investAmount" type="text" required="required" value="<?= set_value('username'); ?>">
		                  <?= form_error('investAmount'); ?>
		                </div>

		                <label class="col-sm-2 control-label" for="form-control-32">Monthly Return Amount</label>
		                <div class="col-sm-4">
			                <input id="form-control-32" class="form-control" name="meturtyAmount" type="text" required="required" value="<?= set_value('username'); ?>">
		                  <?= form_error('meturtyAmount'); ?>
		                </div>
		              </div>

		              <div class="form-group">
		                <label class="col-sm-2 control-label" for="form-control-33">Meturity Amount</label>
		                <div class="col-sm-4">
		                	<input id="form-control-33" class="form-control" name="investAmount" type="text" required="required" value="<?= set_value('username'); ?>">
		                  <?= form_error('investAmount'); ?>
		                </div>

		                <label class="col-sm-2 control-label" for="form-control-34">Applied Interest Rate</label>
		                <div class="col-sm-4">
		                	<input id="form-control-34" readonly="true" name="appliedInterest" class="form-control" type="text">
		                  <?= form_error('appliedInterest'); ?>
		                </div>
		              </div>
		              
	              </span>

	              <span id="mip" style="display: none;">
		              <div class="form-group">
		                <label class="col-sm-2 control-label" for="form-control-1">Plan Amount</label>
		                <div class="col-sm-4">
		                	<select id="demo-select2-5" class="form-control" name="planAMount" onchange="getperMonthAmount(this.value)" required="required">
		                		<option>-Select Amount-</option>
		                		<option value="1000">1000/Month</option>
		                		<option value="2000">2000/Month</option>
		                		<option value="3000">3000/Month</option>
		                		<option value="4000">4000/Month</option>
		                		<option value="5000">5000/Month</option>
		                  </select>
		                </div>

		                <label class="col-sm-2 control-label" for="form-control-1">Monthely Amount</label>
		                <div class="col-sm-4">
			                <select id="demo-select2-6" class="form-control" name="duration" required="required"></select>
		                  <?= form_error('meturtyAmount'); ?>
		                </div>
		              </div>

		              <div class="form-group">
		                <label class="col-sm-2 control-label" for="form-control-36">Meturity Amount</label>
		                <div class="col-sm-4">
			                <input id="form-control-36" class="form-control" name="meturtyAmount" type="text" required="required" value="<?= set_value('username'); ?>">
		                  <?= form_error('meturtyAmount'); ?>
		                </div>
		              </div>
		              
	              </span>
	              
	              <div class="divider divider-horizontal">
                  <div class="divider-content text-primary"><h4>LOGIN DETAIL</h4></div>
                </div>

	              <div class="form-group">
	                <label class="col-sm-2 control-label" for="form-control-37">Username</label>
	                <div class="col-sm-4">
	                  <input id="form-control-37" class="form-control" name="username" type="text" required="required" value="<?= set_value('username'); ?>">
	                  <?= form_error('username'); ?>
	                </div>

	                <label class="col-sm-2 control-label" for="form-control-38">Password</label>
	                <div class="col-sm-4">
	                  <input id="form-control-38" class="form-control" name="password" type="password" required="required" value="<?= set_value('password'); ?>">
	                  <?= form_error('password'); ?>
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

<script type="text/javascript">
	function getComittee(branchID) {
		$.ajax({
			url: '<?= site_url() ?>comitteebybranch.html',
			method: "POST",
			data: {branchID: branchID},
			success: function(data){
				$(`#demo-select2-2`).html(JSON.parse(data).result.map(val => { return `<option value="${val.id}">${val.title}</option>` }).join(""))
			}
		})
	}

	function getPlan(planID) {
		$.ajax({
			url: '<?= site_url() ?>plans.html',
			method: "POST",
			data: {id: planID},
			success: function(data){
				$(`planDetail`).val(data)

				if(planID == '1')
					$("#fd").removeAttr("style")
				else
					$("#fd").css("display", "none")

				if(planID == '2')
					$("#rd").removeAttr("style")
				else
					$("#rd").css("display", "none")

				if(planID == '3')
					$("#mis").removeAttr("style")
				else
					$("#mis").css("display", "none")

				if(planID == '4')
					$("#mip").removeAttr("style")
				else
					$("#mip").css("display", "none")
				

				$(`#demo-select2-4`).html(`<option>-Select Duration-</option>` + JSON.parse(data).result.map(val => { return `<option value="${val.duration}">${val.duration} Years</option>` }).join(""))
			}
		})
	}

	function getperMonthAmount(plan) {
		let amountArray = []

		alert(plan)

		if(plan == "1000")
			amountArray = [100,120,140,168,210,420]

		if(plan == "2000")
			amountArray = [200,240,280,336,420,840]

		if(plan == "3000")
			amountArray = [300,360,420,504,630,1260]

		if(plan == "4000")
			amountArray = [400,480,560,672,840,1680]

		if(plan == "5000")
			amountArray = [500,600,700,840,1150,2100]

		let options = `<option>-Select Amount -</option>`

		options += amountArray.map(val => {
			return `<option value="${val}">${val}</option>`
		}).join("")

		alert(options)
		$("#demo-select2-6").html(options)

	}
</script>
