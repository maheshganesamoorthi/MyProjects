function ValidationForUpdate() {

   
    var fname = document.getElementById('MainContent_fname').value;
    var lname = document.getElementById('MainContent_lname').value;
    var address = document.getElementById('address').value;
    var contact = document.getElementById('MainContent_phone').value;
    var emailid = document.getElementById('MainContent_mail').value;

    if (fnamevalid(fname)) {
     
            if (lnamevalid(lname)) {
                if (addressvalid(address)) {
                    if (contactvalid(contact)) {
                        if (emailidvalid(emailid)) {
                            return true;
                        }
                   
                }
            }
        }
        return false; 
        }
    
    }
    function fnamevalid(fname) {

        if (fname == "" || fname == null) {
            alert("Enter the FirstName");
            return false;
        }
        else {
            var letters = /^[A-Za-z]+$/;
            if (!fname.match(letters)) {
                alert('First Name must have alphabet characters only');
                return false;
            }
        }
            return true;
        
    }

    function lnamevalid(lname) {

        if (lname == "" || lname == null) {
            alert("Enter the LastName");
            return false;
        }
        else {
            var letters = /^[A-Za-z]+$/;
            if (!lname.match(letters)) {
                alert('Last Name must have alphabet characters only');
                return false;
            }
        }
        return true;

    }
    function addressvalid(address) {
       
        if (address == "" || address == null) {
            alert("Enter the Address");           
            return false;
        }
        return true;
    }
    function contactvalid(contact) {
     
        if ((contact == "" || contact == null) || (contact.length != 10)) {
            alert("Enter the 10 digit Contact Number");           
            return false;
        }
        if (isNaN(contact)) {
            alert("only numbers are allowed");
            return false;
        }
        return true;
    }
    function emailidvalid(emailid) {
      
        if (emailid == "" || emailid == null) {
            alert("Enter the EmailID");          
            return false;
        }
        var atpos = emailid.indexOf("@");
        var dotpos = emailid.lastIndexOf(".");
        if (atpos < 1 || dotpos < atpos + 2 || dotpos + 2 >= emailid.length) {
            alert("Not a valid e-mail address");
            return false;
        }
        return true;

    }

    function ValidateField(objVal,fieldName) {
        if (objVal.value == "" || objVal.value == null)
            alert("The " + fieldName + "is empty");
    }
