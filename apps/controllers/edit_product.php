<?php
$restrictedArea = true;
$newShippingActive = true;
$formActive = true;
$dateActive = true;
$wizardActive = false;
$tipsyActive = true;
$nowDate = date('d/m/Y');
$nowTime = date('H:i');
include _VIEW_PATH . "/common_header.phtml";
$productfamilies = $sqlData->getProductFamilyCode();
$productsubfamilies = $sqlData->getProductSubFamilyCode();
$othercontacts = $sqlData->getOtherCustomers($_SESSION['customer']['contact_num']);
$productCode = urldecode($url_array[3]);
$product = $sqlData->customerProductDetail($productCode);
$product = $product['data'][0];
// $lib->debug($product);
?>
<div class="wrapper">

    <!-- Header -->
    <header id="js-header" class="u-header">
        <div class="u-header__section">
            <?php //include _VIEW_PATH."global_top_bar.phtml"; 
            ?>
            <?php include _VIEW_PATH . $lib->lang . "/top_menu.phtml";  ?>
        </div>
    </header>
    <!-- End Header -->

    <!-- Breadcrumbs -->
    <section class="g-bg-gray-light-v5 g-py-50">
        <div class="container">
            <div class="d-sm-flex text-center">
                <div class="align-self-center">
                    <h2 class="h3 g-font-weight-300 w-100 g-mb-10 g-mb-0--md">

                    </h2>
                </div>

                <div class="align-self-center ml-auto">
                    <ul class="u-list-inline">
                        <li class="list-inline-item g-mr-5">
                            <a class="u-link-v5 g-color-main g-color-primary--hover" href="/<?php echo $lib->lang; ?>">
                                <?php echo $lang->trl('Home'); ?>
                            </a>
                            <i class="g-color-gray-light-v2 g-ml-5">/</i>
                        </li>
                        <li class="list-inline-item g-color-primary">
                            <span>
                                Modifier un produit
                            </span>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </section>
    <!-- End Breadcrumbs -->

    <!-- <section class="g-mb-100"> -->
    <div class="container">
        <div class="row">

            <?php
            if ($_SESSION['customer']['authValidated']) {
                include _VIEW_PATH . "/customer/profile_left_menu.phtml";
            }
            ?>

            <!-- Profile Content -->
            <div class="col-lg-9">
                <!-- Overall Statistics -->
                <div class="col-md-12">
                    <div class="g-bg-gray-dark-v5 g-color-white g-pa-25">
                        <header class="d-flex text-uppercase">
                            <div class="g-line-height-1">
                                <div class="js-counter g-font-size-30" data-comma-separated="true">
                                    Ajout d'un nouveau produit
                                </div>
                            </div>
                        </header>
                    </div>
                </div>
                <div class="col-md-12 g-mt-20">
                    <div class="profile-body margin-bottom-20">
                        <div class="tabbable">

                            <header class="text-center mb-4">
                                <div class="text-danger">
                                    <h6 id="error_message"></h6>
                                </div>
                                <div class="text-success">
                                    <h6 id="success_message"></h6>
                                </div>
                            </header>

                            <?php //var_dump($_SESSION['customer']) 
                            ?>
                            <form class="sky-form" id="sky-form4" action="/customer/newProduct">
                                <input type='hidden' id='article_ID' name='article_ID' value="<?= $product->article_ID; ?>" />
                                <input type='hidden' id='contact_num' name='contact_num' value="<?= $_SESSION['customer']['contact_num'] ?>" />
                                <input type='hidden' id='magasinID' name='magasinID' value="<?= $product->magasin_code ?>" />
                                <!-- Circles which indicates the steps of the form: -->
                                <div style="text-align:center;margin-top:40px;">
                                    <span class="step"></span>
                                    <span class="step"></span>
                                    <span class="step"></span>
                                </div>


                                <div class="tab-content">
                                    <label id='sp' class="mt-2 text-center"></label>

                                    <?php
                                    include _VIEW_PATH . "/customer/edit_product_step1.phtml";
                                    include _VIEW_PATH . "/customer/edit_product_step2.phtml";
                                    include _VIEW_PATH . "/customer/edit_product_step3.phtml";
                                    ?>
                                    <div style="overflow:auto;">
                                        <button type="button" class="btn btn-dark" onclick="nextPrev(-1)" id="prevBtn">
                                            <i class="fa fa-chevron-left mr-2"></i>
                                            <?php echo $lang->trl('Previous'); ?>
                                        </button>
                                        <button type="button" class="btn btn-primary" onclick="nextPrev(1)" id="nextBtn">
                                            <?php echo $lang->trl('Save'); ?>
                                            <i class="fa fa-save ml-2"></i>
                                        </button>
                                    </div>
                                </div>


                            </form>
                        </div>
                    </div>
                </div>
            </div>
            <!-- End Overall Statistics -->
        </div>
        <!-- End Profile Content -->
    </div>
    <!-- </section> -->
</div>

<script>
    $(document).ready(function() {
        // alert()
        if ($('#article_type_code').val() == 'DEPOT') {
            $('.taux_commission_part').show();
        } else {
            $('.taux_commission_part').hide();
        }
        $('#article_type_code').change(function() {
            if ($('#article_type_code').val() == 'DEPOT') {
                $('.taux_commission_part').show();
            } else {
                $('.taux_commission_part').hide();

            }
        })

    });
</script>



<script>
    function nextPrev(n) {
        // This function will figure out which tab to display
        var x = document.getElementsByClassName("tab");
        // Exit the function if any field in the current tab is invalid:
        if (n == 1 && !validateForm()) {
            return false;
        }

        if (currentTab < (x.length - 1)) {
            // Hide the current tab:
            x[currentTab].style.display = "none";
            // Increase or decrease the current tab by 1:
            currentTab = currentTab + n;

            // if you have reached the end of the form... :
        } else {
            if (n == -1) {
                x[currentTab].style.display = "none";
                currentTab = currentTab + n;
            } else {
                //...the form gets submitted:
                // alert()

                saveProduct();
                return false;
            }

        }
        // Otherwise, display the correct tab:
        showTab(currentTab);
    }

    /*******************/

    var currentTab = 0; // Current tab is set to be the first tab (0)
    showTab(currentTab); // Display the current tab

    function showTab(n) {
        // This function will display the specified tab of the form ...
        var x = document.getElementsByClassName("tab");

        x[n].style.display = "block";
        // ... and fix the Previous/Next buttons:
        if (n == 0) {
            document.getElementById("prevBtn").style.display = "none";
        } else {
            document.getElementById("prevBtn").style.display = "inline";
        }
        if (n >= (x.length - 1)) {
            document.getElementById("nextBtn").innerHTML = "Enregistrer";
        } else {
            document.getElementById("nextBtn").innerHTML = "Suivant";
        }
        // ... and run a function that displays the correct step indicator:
        fixStepIndicator(n)
    }


    function validateForm() {
        // This function deals with validation of the form fields
        var x, y, i, j, valid = true;

        x = document.getElementsByClassName("tab");
        y = x[currentTab].getElementsByTagName("input");
        z = x[currentTab].getElementsByTagName('select');

        for (j = 0; j < z.length; j++) {

            if (z[j].name != "code_deposant") {
                if (z[j].value == "") {

                    // console.log(z[j].name);
                    z[j].className += " invalid";
                    checkSubmit();
                    valid = false;

                }
            }

        }

        // A loop that checks every input field in the current tab:
        for (i = 0; i < y.length; i++) {
            // If a field is empty...
            if (y[i].value == "") {
                // alert(y[i].value)
                if (y[i].name != "files[]") {
                    // add an "invalid" class to the field:
                    y[i].className += " invalid";
                    checkSubmit();
                    // and set the current valid status to false:
                    valid = false;
                }
            }
        }

        // If the valid status is true, mark the step as finished and valid:
        if (valid) {
            document.getElementById("error_message").style.display = "none";
            document.getElementsByClassName("step")[currentTab].className += " finish";
        }

        return valid; // return the valid status
    }

    function fixStepIndicator(n) {
        // This function removes the "active" class of all steps...
        var i, x = document.getElementsByClassName("step");
        for (i = 0; i < x.length; i++) {
            x[i].className = x[i].className.replace(" active", "");
        }
        //... and adds the "active" class to the current step:
        x[n].className += " active";
    }

    function showFormEr(m) {
        if ($.trim(m)) {
            $("#sp").css('color', 'red').html("<?php echo $lang->trl('An error was detected'); ?> : " + m);
            $("#spt").css('color', 'red').html("<?php echo $lang->trl('An error was detected'); ?> : " + m);
        } else {
            $("#sp").css('color', 'red').html("");
            $("#spt").css('color', 'red').html("");
        }
    }

    /* check all errors on form */
    function checkSubmit() {
        eC = 0;

        // console.log($("#files").val())
        /* step 1*/
        if (!$.trim($("#libelle_produit").val())) {
            m = "Veuillez renseigner la d??signation du produit";
            eC = 1;
            document.getElementById("error_message").style.display = "block";
        }

        if (eC == 0) {
            $("#error_message").css('color', 'green').html("");
            return true;
        } else {
            showEr(m);
            return false;
        }

    }


    function saveProduct() {
        document.getElementById('nextBtn').innerHTML = "Enregistrement en cours. Veuillez patienter  ... <i class='fa fa-spinner fa-spin'></i>";
        document.getElementById('nextBtn').setAttribute('disabled', true);
        document.getElementById('prevBtn').setAttribute('disabled', true);
        // alert()
        // console.log(fichiers);
        var formData = new FormData();

        var magasinID = encodeURIComponent($("input[name='magasinID']").val());
        var article_ID = encodeURIComponent($("input[name='article_ID']").val());
        var contact_num = encodeURIComponent($("input[name='contact_num']").val());
        var libelle_produit = encodeURIComponent($("input[name='libelle_produit']").val());
        var description = $("#description").val();
        var prix_achat = encodeURIComponent($("input[name='prix_achat']").val());
        var qte_initiale = encodeURIComponent($("input[name='qte_initiale']").val());
        var qte_stock = encodeURIComponent($("input[name='qte_stock']").val());
        var article_type_code = encodeURIComponent($("#article_type_code").val());
        var prix_vente_initial = encodeURIComponent($("input[name='prix_vente_initial']").val());
        var prix_vente_courant = encodeURIComponent($("input[name='prix_vente_courant']").val());
        // var code_deposant = encodeURIComponent($("input[name='code_deposant']").val());

        var famillecode = $("#famillecode").val();
        var sous_famillecode = $("#sous_famillecode").val();
        var taux_commission = encodeURIComponent($("input[name='taux_commission']").val());
        var qte_minimum_stock = encodeURIComponent($("input[name='qte_minimum_stock']").val());
        var qte_maximum_stock = encodeURIComponent($("input[name='qte_maximum_stock']").val());
        var qte_stock_alerte = encodeURIComponent($("input[name='qte_stock_alerte']").val());
        // var code_utilisateur = encodeURIComponent($("input[name='code_utilisateur']").val());
        var cout_emballage = encodeURIComponent($("input[name='cout_emballage']").val());
        var frais_port = encodeURIComponent($("input[name='frais_port']").val());


        var form = $('#sky-form4')[0];
        var formData = new FormData(form);

        formData.append("magasinID", magasinID);
        formData.append("article_ID", article_ID);
        formData.append("contact_num", contact_num);

        formData.append("libelle_produit", libelle_produit);
        formData.append("description", description);

        formData.append("prix_achat", prix_achat);
        formData.append("qte_initiale", qte_initiale);
        formData.append("qte_stock", qte_stock);
        formData.append("article_type_code", article_type_code);
        formData.append("prix_vente_initial", prix_vente_initial);
        formData.append("prix_vente_courant", prix_vente_courant);
        // formData.append("code_deposant", code_deposant);

        formData.append("famillecode", famillecode);
        formData.append("sous_famillecode", sous_famillecode);
        formData.append("taux_commission", taux_commission);
        formData.append("qte_minimum_stock", qte_minimum_stock);
        formData.append("qte_maximum_stock", qte_maximum_stock);
        formData.append("qte_stock_alerte", qte_stock_alerte);
        // formData.append("code_utilisateur", code_utilisateur);
        formData.append("cout_emballage", cout_emballage);
        formData.append("frais_port", frais_port);


        $.ajax({
            url: '/customer/update_product/',
            type: 'POST',
            enctype: 'multipart/form-data',
            data: formData,
            processData: false,
            contentType: false,
            cache: false,
            timeout: 600000,
            success: function(msg) {
                var val = msg.split('||');
                console.log(msg)
                if (val[0] == "false") {
                    $("#error_message").html(val[1]);
                    $("#error_message").show();
                    $("#prevBtn").attr("disabled", false);
                    $("#nextBtn").attr("disabled", false);
                    $("#nextBtn").html("Enregistrer");

                } else if (val[0] == "true") {
                    $("#success_message").html("Modification r??ussie");
                    $("#error_message").html("");
                    // $("#success_message").show();
                    $("#nextBtn").html("Modification r??ussie. <i class='fa fa-check'></i>")
                        .attr("disabled", true);

                    rnd = Math.random();
                    window.location.href = '/customer/articles/' + rnd;


                }

            },
            error: function(resultat, statut, erreur) {
                $("#error_message").html("Une erreur s'est produite. Veuillez r??essayer. <i class='fa fa-stop-circle'></i>");
                console.log('Resultat : ' + resultat);
                console.log('Statut : ' + statut);
                console.log('Erreur : ' + erreur);
            }
        });

    }



    function showEr(m) {

        if ($.trim(m)) {
            $("#error_message").css('color', 'red').html(m);
        } else {
            $("#error_message").css('color', 'red').html("");
        }
    }
</script>

<!--===End Profile===-->
<?php include _VIEW_PATH . $lib->lang . "/common_footer.phtml"; ?>
<!-- < /div> -->
<!--/wrapper--> <?php include _VIEW_PATH . "/common_include_files.phtml"; ?>