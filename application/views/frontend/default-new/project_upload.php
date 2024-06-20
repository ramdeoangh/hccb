<?php $user_details = $this->user_model->get_all_user($this->session->userdata('user_id'))->row_array(); ?>
<?php $social_links = json_decode($user_details['social_links'], true); ?>


<?php include "breadcrumb.php"; ?>

<!--------  Wish List body section start------>
<section class="wish-list-body message">
    <div class="container">
        <div class="row">
            <div class="col-lg-3 col-md-4">
                <?php include "profile_menus.php"; ?>
            </div>
            <div class="col-lg-9 col-md-8">
                <div class="profile">
                    <div class="profile-bg">
                        <!-- <img src="<?php echo base_url('assets/frontend/default-new/img/profile-bg-2.jpg') ?>"> -->
                    </div>
                    <div class="profile-ful-body common-card">
                        <div class="profile-parrent mt-5">
                            <div class="profile-child">
                               <!-- <a href="#"><img src="<?php echo base_url('assets/frontend/default-new/img/fileimages.png') ?>"></a>  -->
                                <div class="child-text">
                                    <a href="#"><h5>Upload Project</h5></a>
                                    <p>Please upload course</p>  
                                </div>
                            </div>

                            <div class="profile-child-btn">
                                <form  class="d-flex align-items-center">
                                
                                <a for="profile-photo-input" class="btn btn-lg float-end" type="button" style="color: var(--color-9);background: linear-gradient(96.24deg,#f50002 1.06%,#fd6310 33.64%,#b49d73 55.91%,#6bce7f 83.77%,#6ac6cd 99.99%)" target="_blank"  href="https://docs.google.com/forms/d/e/1FAIpQLSeHaZz986evpwWZ3MjFhLAoe_Ggy5eKTv9MbFACVT0WrD0MQg/viewform">
                                <i class="fas fa-upload"></i> 
                                <?php echo 'Upload Project' ?></a>
                                  
                                </form>
                            </div>
                        </div>                  
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-------- wish list bosy section end ------->