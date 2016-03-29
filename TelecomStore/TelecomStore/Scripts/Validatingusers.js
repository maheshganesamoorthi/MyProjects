function ValidationForUpdate() {

    var fname = document.getElementById('MainContent_FirstName').value;

    var lname = document.getElementById('MainContent_LastName').value;

    var address = document.getElementById('MainContent_Address').value;

    var contact = document.getElementById('MainContent_PhoneNo').value;

    var emailid = document.getElementById('MainContent_EmailID').value;

    var role = document.getElementById('MainContent_UserRoles').value;

    var question = document.getElementById('MainContent_secureDropDownList').value;

    var answer = document.getElementById('MainContent_secureAnswer').value;

    if (fnamevalid(fname)) {

        if (lnamevalid(lname)) {

            if (addressvalid(address)) {

                if (contactvalid(contact)) {

                    if (emailidvalid(emailid)) {

                        if (rolevalid(role)) {

                            if (securequestion(question)) {

                                if (secureAnswerValid(answer)) {

                                    return true;

                                }

                            }

                        }

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

function rolevalid(role) {

    if (role == "--SELECT--") {

        alert("select role");

        return false;

    }

    return true;

}

function securequestion(question) {

    if (question == "--SELECT--") {

        alert("select security question");

        return false;

    }

    return true;

}

function secureAnswerValid(answer) {

    if (answer == "" || answer == null) {

        alert("Enter the answer");

        return false;

    }

    return true;

}

