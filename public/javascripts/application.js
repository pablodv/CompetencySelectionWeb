function selectCascadeInstitute(){
    jQuery("select#education_type_education").change(function(){
      var id_value_string = jQuery(this).val();
      if (id_value_string == "") {
         jQuery("select#education_institute_id option").remove();
         var row = "<option value=\"" + "" + "\">" + "Select a value please..." + "</option>";
         jQuery(row).appendTo("select#education_institute_id");
      }
      else {
        jQuery.ajax({
          dataType: "json",
          cache: false,
          url: 'institute_type_education/' + id_value_string,
          timeout: 2000,
          error: function(XMLHttpRequest, errorTextStatus, error){
          alert("Failed to submit : "+ errorTextStatus+" ;"+error);
          },
          success: function(data){
            jQuery("select#education_institute_id option").remove();
            var row = "<option value=\"" + "" + "\">" + "Select a value please..." + "</option>";
            jQuery(row).appendTo("select#education_institute_id");

            jQuery.each(data, function(i, j){
              row = "<option value=\"" + j.institute.id + "\">" + stripHTML(j.institute.name) + "</option>";
              jQuery(row).appendTo("select#education_institute_id");
            });
            jQuery("select#education_institute_id")[0].highlight();
            }
        });
      };
    });
}

//
/*function selectCascadeSpecialty(){
    jQuery("select#education_type_education").change(function(){
      var id_value_string = jQuery(this).val();
      if (id_value_string == "") {
         jQuery("select#education_specialty_id option").remove();
         var row = "<option value=\"" + "" + "\">" + "Select a value please..." + "</option>";
         jQuery(row).appendTo("select#education_specialty_id");
      }
      else {
        jQuery.ajax({
          dataType: "json",
          cache: false,
          url: 'specialty_type_education/' + id_value_string,
          timeout: 2000,
          error: function(XMLHttpRequest, errorTextStatus, error){
          alert("Failed to submit : "+ errorTextStatus+" ;"+error);
          },
          success: function(data){
            jQuery("select#education_specialty_id option").remove();
            var row = "<option value=\"" + "" + "\">" + "Select a value please..." + "</option>";
            jQuery(row).appendTo("select#education_specialty_id");

            jQuery.each(data, function(i, j){
              row = "<option value=\"" + j.institute.id + "\">" + stripHTML(j.institute.name) + "</option>";
              jQuery(row).appendTo("select#education_specialty_id");
            });
            jQuery("select#education_specialty_id")[0].highlight();
            }
        });
      };
    });
}*/

function stripHTML(html){
  return html.replace(/script/g, '').replace(/<a/g, '').replace(/img/g, '').replace(/<>/, '');
}