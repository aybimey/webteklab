<?php
    include_once 'link.php';
    session_start();
?>


<!DOCTYPE html>
<html lang="en">

    <!-- Register -->
    <section class="bg-light registerdiv" id="register">
    <div ng-controller="DemoCtrl" ng-cloak="" class="md-inline-form" ng-app="MyApp" layout="column" layout-sm="row" layout-align="center center" layout-align-sm="start start" layout-fill>
       <div class="row">
          <div class="col-lg-12 text-center">
            <h2 class="section-heading text-uppercase">Register & Rent Now!</h2>
            <h3 class="section-subheading text-muted">"Find the Confidence with our suit & gown"</h3>
          </div>
        </div>
        <div layout-padding="">
            <div></div>

            <form action="phpinclude/register-dbase.php" name="userForm" method="POST" ng-submit="user.submit(userForm.$valid)" enctype="multipart/form-data">

                <div layout="row" layout-sm="column">
                    <md-input-container flex-gt-sm="">
                        <label>First name</label>
                        <input ng-model="user.first_name" name="first_name" required type="text" ng-pattern="/^[a-zA-Z'. -]+$/" placeholder="First Name">
                        <div ng-if="userForm.first_name.$dirty" ng-messages="userForm.first_name.$error" role="alert">
                            <div ng-message="required" class="my-message">First Name is Required.</div>
                            <div ng-message="pattern" class="my-message">Enter correct First Name.</div>
                        </div>
                    </md-input-container>
                    <md-input-container flex-gt-sm="">
                        <label>Last Name</label>
                        <input ng-model="user.last_name" name="last_name" required type="text" ng-pattern="/^[a-zA-Z'. -]+$/" placeholder="Last Name">
                        <div ng-if="userForm.last_name.$dirty" ng-messages="userForm.last_name.$error" role="alert">
                            <div ng-message="required" class="my-message">Last Name is Required.</div>
                            <div ng-message="pattern" class="my-message">Enter correct Last Name.</div>
                        </div>
                        <div>
                    </md-input-container>
                  </div>
                </div>
                 <div layout="row" layout-sm="column">
                          <md-input-container flex-gt-sm="">
                        <label>Username</label>
                        <input ng-model="user.user_name" name="username" required type="text" ng-pattern="/^[a-zA-Z'. -]+$/" placeholder="Username">
                        <div ng-if="userForm.user_name.$dirty" ng-messages="userForm.user_name.$error" role="alert">
                            <div ng-message="required" class="my-message">Username is Required.</div>
                            <div ng-message="pattern" class="my-message">Enter correct Username.</div>
                        </div>
                    </md-input-container>
                  </div>

                <div layout="row" layout-sm="column">
                    <p style="font-size: 12px; margin-left: 3px; margin-top: 18px;">Gender: </p>
                    <input type="hidden" name="gender" value="{{user.gender}}" />
                    <md-radio-group style="margin: 12px 0 19px;" ng-model="user.gender" required>
                        <md-radio-button value="Male" class="md-primary">Male</md-radio-button>
                        <md-radio-button value="Female">Female</md-radio-button>
                    </md-radio-group>

                    <md-input-container flex-gt-sm="60">
                        <label>Age</label>
                        <input required type="number" step="any" name="age" ng-model="user.age" min="18" max="100" placeholder="18" />
                        <div ng-if="userForm.age.$dirty" ng-messages="userForm.age.$error" role="alert" multiple>
                            <div ng-message="required">Age is Required.</div>
                            <div ng-message="min">Only Above 18 years Old are allowed.</div>
                            <div ng-message="max">Sorry {{userForm.age.$viewValue}} years old are not Allowed.</div>
                        </div>
                    </md-input-container>
                </div>
                <div layout="row" layout-sm="column">
                    <md-input-container flex-gt-sm="">
                        <label>Email</label>
                        <input required type="email" name="email" ng-model="user.email" ng-pattern="/^[_a-z0-9-+]+(\.[_a-z0-9-+]+)*@[a-z0-9-]+(\.[a-z0-9-]+)*(\.[a-z]{2,4})$/" placeholder="email@example.com" />
                        <div ng-if="userForm.email.$dirty" ng-messages="userForm.email.$error" role="alert">
                            <div ng-message="required" class="my-message">Email Address is Required.</div>
                            <div ng-message="pattern" class="my-message">Enter Correct Email Address. </div>
                            <div ng-message="email" class="my-message">Enter Correct Email Address. </div>
                        </div>
                    </md-input-container>
                </div>
                <div layout="row" layout-sm="column">
                    <md-input-container flex-gt-sm="">
                        <label>New Password</label>
                        <input name="password" ng-model="user.password" type="password" minlength="8" maxlength="100" ng-pattern="/(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}/" required placeholder="********">
                        <div ng-if="userForm.password.$dirty" ng-messages="userForm.password.$error" role="alert" multiple>
                            <div ng-message="required">Password is Required.</div>
                            <div ng-message="pattern">Password should contain at least one number, one lowercase and one uppercase character.</div>
                            <div ng-message="minlength">Password should be greater than 8 letters.</div>
                            <div ng-message="maxlength">Password Can't be more than 100 letters.</div>
                        </div>
                    </md-input-container>
                    <md-input-container flex-gt-sm="">
                        <label>Confirm Password</label>
                        <input name="confirmpassword" ng-model="user.confmPassword" type="password" minlength="8" maxlength="100" ng-pattern="/(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}/" required compare-to="user.password" placeholder="********">
                        <div ng-if="userForm.confmPassword.$dirty" ng-messages="userForm.confmPassword.$error" role="alert">
                            <div ng-message="required">Confirm Password is Required.</div>
                            <div ng-message="compareTo">Password Doesn't Match.</div>
                        </div>
                    </md-input-container>
                </div>
                <md-button class="md-raised md-primary" style="width:100%; margin: 0px 0px;" type="submit" name="submit" ng-disabled="userForm.$invalid" name="submit">Register</md-button>
            </form>
        </div>
</div>
    </section>

    <!-- end registration -->

<?php
    include_once 'footer.php';
?>
