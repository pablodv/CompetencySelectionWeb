jQuery(document).ready(function() {
  //  var competency_ids = []
  appearNotice();
  selectCascadeDepartament();
  selectCompetencies(competency_ids);
});

function appearNotice() {
  setTimeout("$('#notice').fadeOut(5000);", 2000);
}

function selectCompetencies(){
  $("#competencies").change(function(){
    var competency_ids = []
    if (jQuery(this).val() > 0) {
      $(".competencies_list").append("<li>"+ $("#competencies option[value='"+ $(this).val() +"']").text() +"</li>");
      if ($("#competency_ids").val()) {
        competency_ids.push($("#competency_ids").val());
      }
      competency_ids.push($(this).val());
      $("#competency_ids").val(competency_ids);
    }
  });
}

function selectCascadeDepartament(){
  $("select#job_competency_profile_area_id").change(function(){
    var id_value_string = jQuery(this).val();
    if (id_value_string == "") {
      $("select#job_competency_profile_departament_id option").remove();
      var row = "<option value=\"" + "" + "\">" + "Select a value please..." + "</option>";
      $(row).appendTo("select#job_competency_profile_departament_id");
    }
    else {
      $.ajax({
        dataType: "json",
        cache: false,
        url: 'departament_by_area/' + id_value_string,
        timeout: 2000,
        error: function(XMLHttpRequest, errorTextStatus, error){
          alert("Failed to submit : "+ errorTextStatus+" ;"+error);
        },
        success: function(data){
          $("select#job_competency_profile_departament_id option").remove();
          var row = "<option value=\"" + "" + "\">" + "Select a value please..." + "</option>";
          $(row).appendTo("select#job_competency_profile_departament_id");

          $.each(data, function(i, j){
            row = "<option value=\"" + j.departament.id + "\">" + stripHTML(j.departament.name) + "</option>";
            $(row).appendTo("select#job_competency_profile_departament_id");
          });
        //$("select#job_competency_profile_departament_id")[0].highlight();
        }
      });
    };
  });
}

function selectCascadeInstitute(){
  $("select#education_type_education").change(function(){
    var id_value_string = jQuery(this).val();
    if (id_value_string == "") {
      $("select#education_institute_id option").remove();
      var row = "<option value=\"" + "" + "\">" + "Select a value please..." + "</option>";
      $(row).appendTo("select#education_institute_id");
    }
    else {
      $.ajax({
        dataType: "json",
        cache: false,
        url: 'institute_type_education/' + id_value_string,
        timeout: 2000,
        error: function(XMLHttpRequest, errorTextStatus, error){
          alert("Failed to submit : "+ errorTextStatus+" ;"+error);
        },
        success: function(data){
          $("select#education_institute_id option").remove();
          var row = "<option value=\"" + "" + "\">" + "Select a value please..." + "</option>";
          $(row).appendTo("select#education_institute_id");

          $.each(data, function(i, j){
            row = "<option value=\"" + j.institute.id + "\">" + stripHTML(j.institute.name) + "</option>";
            $(row).appendTo("select#education_institute_id");
          });
          $("select#education_institute_id")[0].highlight();
        }
      });
    };
  });
}

//
/*function selectCascadeSpecialty(){
    $("select#education_type_education").change(function(){
      var id_value_string = $(this).val();
      if (id_value_string == "") {
         $("select#education_specialty_id option").remove();
         var row = "<option value=\"" + "" + "\">" + "Select a value please..." + "</option>";
         $(row).appendTo("select#education_specialty_id");
      }
      else {
        $.ajax({
          dataType: "json",
          cache: false,
          url: 'specialty_type_education/' + id_value_string,
          timeout: 2000,
          error: function(XMLHttpRequest, errorTextStatus, error){
          alert("Failed to submit : "+ errorTextStatus+" ;"+error);
          },
          success: function(data){
            $("select#education_specialty_id option").remove();
            var row = "<option value=\"" + "" + "\">" + "Select a value please..." + "</option>";
            $(row).appendTo("select#education_specialty_id");

            $.each(data, function(i, j){
              row = "<option value=\"" + j.institute.id + "\">" + stripHTML(j.institute.name) + "</option>";
              $(row).appendTo("select#education_specialty_id");
            });
            $("select#education_specialty_id")[0].highlight();
            }
        });
      };
    });
}*/

function stripHTML(html){
  return html.replace(/script/g, '').replace(/<a/g, '').replace(/img/g, '').replace(/<>/, '');
}