
<div class="layout-content">
	<div class="layout-content-body">
	  <div class="row gutter-xs">
		<div class="col-md-12" id="planDetail">
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
              <strong>Policy Detail</strong>
            </div>
            <div class="card-body" data-toggle="match-height">
            	<table class="table table-bordered">
                  <tr>
                    <th class="text-left">Policy No</th>
                    <td class="text-left"><?=  date("ymd", strtotime($planDetail->created)).'P'.$policyID; ?></td>
                    <th class="text-left">Customer ID</th>
                    <td class="text-left"><?=  date("ymd", strtotime($planDetail->created)).'C'.$planDetail->id; ?></td>
                    <th class="text-left">Date</th>
                    <td class="text-left"><?=  date("d-M-Y", strtotime($planDetail->created)); ?></td>
                  </tr>
                  <tr>
                    <th class="text-left">Policy Title</th>
                    <td class="text-left"><?= $planDetail->title ?></td>
                    <th class="text-left">Duration</th>
                    <td class="text-left"><?= $planDetail->durationMonth; ?> Months</td>
                    <th class="text-left">Principle Amount</th>
                    <td class="text-left"><?= $planDetail->oneTimeInvestment; ?></td>
                  </tr>
              </table>
            </div>
          </div>
        </div>
	  </div>
	</div>
</div>