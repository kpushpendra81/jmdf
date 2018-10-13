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
              <strong>Collect Premium (<?=  date("ymd", strtotime($planDetail->created)).'P'.$policyID; ?>)</strong>
            </div>
            <div class="card-body" data-toggle="match-height">
              <div class="row">
                <div class="col-md-12">
                  <form method="post" action="<?= base_url() ?>setpremium.html">
                    <table class="table">
                      <tr>
                        <th>Customer-ID</th>
                        <td>
                          <?=  date("ymd", strtotime($planDetail->created)).'C'.$planDetail->id; ?>  
                          <input type="hidden" name="policyID" value="<?= $policyID ?>">
                          <input type="hidden" name="customerID" value="<?= $planDetail->id ?>">
                         <input type="hidden" name="planID" value="<?= $planDetail->planID ?>">
                        
                        </td>
                        <th>Premium Amount</th>
                        <td><?= $planDetail->monthlyInvestment; ?></td>
                        <th>Last Date</th>
                        <td></td>
                        <th>Today</th>
                        <td><?= date("j-M-Y h:i A") ?></td>
                      </tr>
                      <tr>
                        <th>Customer Name</th>
                        <td><?= $planDetail->name; ?></td>
                        <th>Father Name</th>
                        <td><?= $planDetail->fatherName; ?></td>
                        <th>Mother Name</th>
                        <td><?= $planDetail->motherName; ?></td>
                        <th>Date Of Birth</th>
                        <td>
                          
                          <?= date("jS-M-Y", strtotime($planDetail->dob)); ?>
                        </td>
                      </tr>
                      <tr>
                        <th>Address</th>
                        <td><?= $planDetail->address; ?></td>
                        <th>Contact</th>
                        <td><?= $planDetail->mobile; ?></td>
                        <th>Alternet Contact</th>
                        <td><?= $planDetail->phone; ?></td>
                        <th>Aadhar Number</th>
                        <td><?= $planDetail->adhaarNo; ?></td>
                      </tr>
                      <tr>
                        <th>Depositor Name</th>
                        <td><input type="text" name="dipositorName" /></td>
                        <th>Pay-Mode</th>
                        <td>
                          <select name="payMode">
                            <option value="">-Select Mode-</option>
                            <option value="cash">CASH</option>
                            <option value="online">ONLINE</option>
                          </select>
                        </td>
                        <th>Remark</th>
                        <td><input type="text" name="remark" /></td>
                        <th>Select Installment Month</th>
                        <td>
                          <select name="premiumDate">
                            <option value="">-Select Premium Date-</option>
                            <?php 
                           
                            $prDate = date('Y-m-d',strtotime($planDetail->created));
                            for($i=1;$i<$planDetail->durationMonth;$i++){
                            $month = date("M-Y", strtotime($prDate));?>
                            <option value="<?php echo $prDate;?>"><?= $month;?></option>
                           <?php 
                           $prDate = date('Y-m-d', strtotime($prDate. ' + 1 month'));
                           
                            }?>
                           
                          
                           
                          </select>
                        </td>
                      </tr>
                      <tr>
                        <th>Joiner-ID</th>
                        <td><input type="text" name="joinerID" /></td>
                        <th>Late Fee</th>
                        <td><input type="text" name="lateFee" /></td>
                        <th>Total Amount</th>
                        <td><input type="text" name="totalAmount" /></td>
                        <th>Committee</th>
                        <td><input type="text" name="committee" value="<?=  $planDetail->committeeTitle; ?>" /></td>
                      </tr>
                      <tr>
                        <td>
                          <input type="submit" class="btn btn-primary" value="Save & Print">
                        </td>
                      </tr>
                    </table>
                  </form>
                </div>
              </div>
            </div>
          </div>
        </div>
	  </div>
	</div>
</div>