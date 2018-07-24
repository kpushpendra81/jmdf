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
	          <strong>Role</strong>
	        </div>
	        <div class="card-body">

	          <div class="demo-form-wrapper">
	            <form  id="demo-inputmask" class="form form-horizontal" onsubmit="return false;">

	              <div class="form-group">
	                <label class="col-sm-2 control-label" for="form-control-1">Branch</label>
	                <div class="col-sm-6">
	                  	<select id="demo-select2-1" class="form-control" name="branchID" onchange="getRoleList(this.value)" required="required">
		                	<option>- Select Branch -</option>
		                	<?php 
		                		foreach ($branch as $key => $value):
		                			echo '<option value="'.$value->id.'">'.$value->title.'</option>';
		                		endforeach;
		                	?>
		                </select>
	                </div>
	              </div>
	              <div class="form-group">
	                <label class="col-sm-2 control-label" for="form-control-1">Role Title</label>
	                <div class="col-sm-6">
	                  <input id="form-control-1" class="form-control" name="title" type="text" required="required" value="<?= set_value('address'); ?>">
	                  <?= form_error('address'); ?>
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
                      <th>Role Title</th>
                    </tr>
                  </thead>
                  <tbody></tbody>
                </table>

	        </div>
	      </div>
	    </div>

	  </div>
	</div>
</div>

<script type="text/javascript">

	function getRoleList(branchID) {
		$.ajax({
			url: '<?= site_url() ?>role.html',
			method: "GET",
			data: {branchID: branchID},
			success: function(data){
				alert(data)
			}
		})
	}

	
</script>
