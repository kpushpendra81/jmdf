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
			  <strong>Premium Detail</strong>
			</div>
			<div class="card-body">
			  
			  <div class="demo-form-wrapper">
				  <div class="form-group">
					<label class="col-sm-1 control-label" for="form-control-1">CustomerID</label>
					<div class="col-sm-2">
						<input id="form-control-1" class="form-control" type="text" required="required">
					</div>
					<button class="btn btn-primary col-sm-1" onclick="getPlanList()">Get Plan Detail</button>
				  </div>
			  </div>
			</div>
		  </div>
		</div>
		<div class="col-md-12">
          <div class="card">
            <div class="card-header">
               <div class="card-actions" style="top: 35%;">
				<a class="btn btn-sm btn-labeled arrow-success" onclick="addPlan();" href="#">
				  <span class="btn-label">
					<span class="icon icon-plus-square icon-lg icon-fw"></span>
				  </span>
				  Add Plan
				</a>
			  </div>
              <strong>Plan List Associated with given Customer-ID</strong>
            </div>
            <div class="card-body" data-toggle="match-height">
              <table class="table table-hover table-bordered">
                <thead>
                  <tr>
                    <th class="text-left">#</th>
                    <th class="text-left">Policy ID</th>
                    <th class="text-right">Title</th>
                    <th class="text-right">Committee</th>
                    <th class="text-center">durationYear</th>
                    <th class="text-center">durationMonth</th>
                    <th class="text-center">oneTimeInvestment</th>
                    <th class="text-center">meturity</th>
                    <th class="text-center">appliedIntrest</th>
                    <th class="text-center">monthlyReturn</th>
                    <th class="text-center">monthlyInvestment</th>
                    <th class="text-center">totalInvestment</th>
                    <th class="text-center">investerAge</th>
                    <th class="text-center">pensionAmount</th>
                  </tr>
                </thead>
                <tbody>
                  <tr>
                    <td class="text-left">1</td>
                    <td class="text-left">Website traffic</td>
                    <td class="text-right">11,706</td>
                    <td class="text-right">58,530</td>
                    <td class="text-center">
                      
                    </td>
                  </tr>
                </tbody>
              </table>
            </div>
          </div>
        </div>
	  </div>
	</div>
</div>
