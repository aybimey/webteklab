<?php
  include_once 'link.php';
  require "phpinclude/checklogin.php";
?>

    <!-- Rent -->
    <section class="bg-light registerdiv" id="register">
    <div ng-controller="DemoCtrl" ng-cloak="" class="md-inline-form" ng-app="MyApp" layout="column" layout-sm="row" layout-align="center center" layout-align-sm="start start" layout-fill>
       <div class="row">
          <div class="col-lg-12 text-center">
            <h2 class="section-heading">Rent Now!</h2>
            <h3 class="section-subheading text-muted">"Find the Confidence with our suit & gown"</h3>
          </div>
        </div>
        <div layout-padding="">
            <div></div>

            <form action="phpinclude/rent-dbase.php" name="userForm" method="POST">

                <div layout="row" layout-sm="column">
                	<md-input-container flex-gt-sm="60">
                        <label>Contact Number</label>
                        <input required type="number" step="any" name="contact_number" ng-model="user.contact_number"/>

                        <div ng-if="userForm.contact_number.$dirty" ng-messages="userForm.contact_number.$error" role="alert" multiple>
                            <div ng-message="required">Contact Number is Required.</div>
                        </div>
                    </md-input-container>

                    <p style="font-size: 15px; margin-left: 3px; margin-top: 18px;">Size: </p>
                    <input type="hidden" name="size" value="{{user.size}}"/>
                    <md-radio-group style="margin: 12px 0 19px;" ng-model="user.size" required>
                        <md-radio-button value="small">Small</md-radio-button>
                        <md-radio-button value="medium">Medium</md-radio-button>
                        <md-radio-button value="large">Large</md-radio-button>
                    </md-radio-group>  
                </div>

                <div layout="row" layout-sm="column">
                    <md-input-container flex-gt-sm="">
                        <label style="font-size: 18px;">Date to Reserve</label>
                        <input type="date" id="arrive" class="floatLabel" name="reservation_date" value="<?php echo date('Y-m-d'); ?>">
                    </md-input-container>
                </div>
                
                <md-button class="md-raised md-primary" style="width:100%; margin: 0px 0px;" type="submit" name="submit" ng-disabled="userForm.$invalid" name="submit">Submit</md-button>
            </form>
        </div>
</div>
    </section>

    <!-- end registration -->


<?php
    include_once 'footer.php';
?>
