<div class="layout-content">
	<div class="layout-content-body">
	  <div class="row gutter-xs">
	    <div class="col-md-6">
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
	          <strong>Loan Settings</strong>
	        </div>
	        <div class="card-body">

	          <div class="demo-form-wrapper">
	            <form id="demo-inputmask" class="form form-horizontal" onsubmit="return false;">

	              <div class="form-group">
	              	<label class="col-sm-2 control-label" for="form-control-1">Duration</label>
	                <div class="col-sm-3">
	                  	<select id="demo-select2-1" class="form-control" name="branchID" onchange="getInstallmentsSlab(this.value)" required="required">
		                	<option>- Select Duration -</option>
		                	<?php 
		                		for ($i = 1; $i <= 10; $i++):
		                			$yearLable = $i == 1 ? ' Year' : ' Years';
		                			echo '<option value="'. $i . '">'. $i . $yearLable .'</option>';
		                		endfor;
		                	?>
		                </select>
	                </div>
	              </div>
	              <div class="form-group">
	                <label class="col-sm-2 control-label" for="form-control-1">Week (%)</label>
	                <div class="col-sm-2">
	                	<input id="form-control-5" name="week" placeholder="Week %" class="form-control" type="text" data-inputmask="'alias': 'numeric', 'groupSeparator': ',', 'autoGroup': true, 'digits': 2, 'digitsOptional': false, 'prefix': '', 'placeholder': '0'" style="text-align: left;">
	                </div>

	                <label class="col-sm-2 control-label" for="form-control-1">Half-Month (%)</label>
	                <div class="col-sm-2">
	                	<input id="form-control-5" name="halfmonth" placeholder="Half-Month %" class="form-control" type="text" data-inputmask="'alias': 'numeric', 'groupSeparator': ',', 'autoGroup': true, 'digits': 2, 'digitsOptional': false, 'prefix': '', 'placeholder': '0'" style="text-align: left;">
	                </div>

	                <label class="col-sm-2 control-label" for="form-control-1">Month (%)</label>
	                <div class="col-sm-2">
	                	<input id="form-control-5" name="month" placeholder="Month %" class="form-control" type="text" data-inputmask="'alias': 'numeric', 'groupSeparator': ',', 'autoGroup': true, 'digits': 2, 'digitsOptional': false, 'prefix': '', 'placeholder': '0'" style="text-align: left;">
	                </div>
	              </div>


	              <div class="form-group gutter-xs">
	                <label class="col-sm-2 control-label" for="form-control-1">&nbsp;</label>
	                <div class="col-sm-4 center">
	                  <input type="submit" id="buttonRole" value="Save Role" class="btn btn-primary" onclick="setRole();">
	                </div>
	              </div>

	            </form>
	          </div>

	        </div>
	      </div>
	    </div>

	    <div class="col-md-6">
	      <div class="card">
	        <div class="card-header">
	          <strong>Role List</strong>
	        </div>
	        <div class="card-body">

	          	<table class="table">
                  <thead>
                    <tr>
                      <th>#</th>
                      <th>Duration</th>
                      <th>Week %</th>
                      <th>Half-Month %</th>
                      <th>Monthly %</th>
                    </tr>
                  </thead>
                  <tbody id="roleList"></tbody>
                </table>

	        </div>
	      </div>
	    </div>

	  </div>
	</div>
</div>

<script type="text/javascript">

	function getInstallmentsSlab(year) {
		$.ajax({
			url: '<?= site_url() ?>loansettings.html',
			method: "GET",
			data: {year: year},
			success: function(data){
				let response = JSON.parse(data).map((val, idx) => {
					return `<tr>
						<td>${idx + 1}</td>
						<td>${val.title}</td>
						<td><button class="btn btn-primary" onclick="edit(${val.id}, ${val.branchID}, '${val.title}')">Edit</button></td>
					</tr>`
				}).join()
				$('#roleList').html(response)
			}
		})
	}

	function setRole() {
		let branchID = $('#demo-select2-1').val()
		let title 	 = $('#form-control-1').val()

		$.ajax({
			url: '<?= site_url() ?>role.html',
			method: 'POST',
			data: {
				"branchID": branchID, 
				"title": title,
				"edit": false
			},
			success: function(data) {
				$('#form-control-1').val('')
				alert(data)
				let response = JSON.parse(data).map((val, idx) => {
					return `<tr>
						<td>${idx + 1}</td>
						<td>${val.title}</td>
						<td><button class="btn btn-primary" onclick="edit(${val.id}, ${val.branchID}, '${val.title}')">Edit</button></td>
					</tr>`
				}).join()
				$('#roleList').html(response)
			}
		})
	}

	function updateRole() {
		let branchID = $('#demo-select2-1').val()
		let title 	 = $('#form-control-1').val()
		let roleID 	 = $('#roleID').val()

		$.ajax({
			url: '<?= site_url() ?>role.html',
			method: 'POST',
			data: {
				"branchID": branchID, 
				"title": title,
				"edit": true,
				"id": roleID
			},
			success: function(data) {

				$('#form-control-1').val('')
				$("#buttonRole").val("Save Role")
				$("#buttonRole").attr("onclick","setRole()")

				let response = JSON.parse(data).map((val, idx) => {
					return `<tr>
						<td>${idx + 1}</td>
						<td>${val.title}</td>
						<td><button class="btn btn-primary" onclick="edit(${val.id}, ${val.branchID}, '${val.title}')">Edit</button></td>
					</tr>`
				}).join()
				$('#roleList').html(response)
			}
		})
	}

	function edit(roleID, branchID, title){
		$('#demo-select2-1').val(branchID)
		$('#form-control-1').val(title)
		$('#roleID').val(roleID)
		$("#buttonRole").val("Edit Role")
		$("#buttonRole").attr("onclick","updateRole()")
	}
	
</script>
