      <div class="layout-content">
        <div class="layout-content-body">
          <div class="row gutter-xs">
            <div class="col-md-12">
              <div class="card">
                <div class="card-header">
                  <div class="card-actions" style="top: 35%;">
                    <a class="btn btn-sm btn-labeled arrow-primary" href="<?= base_url() ?>newemploye.html">
                      <span class="btn-label">
                        <span class="icon icon-plus-square icon-lg icon-fw"></span>
                      </span>
                      New Employee
                    </a>
                    <a class="btn btn-sm btn-labeled arrow-info" onclick="window.history.back();" href="#">
                      <span class="btn-label">
                        <span class="icon icon-arrow-circle-left icon-lg icon-fw"></span>
                      </span>
                      Back
                    </a>
                  </div>
                  <strong>All Employes</strong>
                </div>
                <div class="card-body">
                  <div class="card-body" data-toggle="match-height">
                    <table class="table">
                      <thead>
                        <tr>
                          <th>#</th>
                          <th>Rank</th>
                          <th>Name</th>
                          <th>Father</th>
                          <th>Status</th>
                          <th>Address</th>
                          <th>Mobile</th>
                          <th>Email</th>
                          <th>Aadhar No</th>
                          <th>Created</th>
                        </tr>
                      </thead>
                      <tbody>
                        <?php foreach ($employes as $key => $value): ?>
                          <tr>
                            <td><?= $value->id; ?></td>
                            <td><?= $value->rank; ?></td>
                            <td><?= $value->name; ?></td>
                            <td><?= $value->fatherName; ?></td>
                            <td><?= $value->activeStatus == 1 ? 'Active' : 'Deactive'; ?></td>
                            <td><?= $value->address; ?></td>
                            <td><?= $value->mobile; ?></td>
                            <td><?= $value->email; ?></td>
                            <td><?= $value->aadharNo; ?></td>
                            <td><?= date("d-M-Y (H:i:s A)", strtotime($value->created)); ?></td>
                          </tr>
                        <?php endforeach; ?>
                      </tbody>
                    </table>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
