function checkForm(form)
  {
    if(form.fname.value == "") {
      alert("Error: Username cannot be blank!");
      form.fname.focus();
      return false;
    }
    re = /^\w+$/;
    if(!re.test(form.fname.value)) {
      alert("Error: Username must contain only letters, numbers and underscores!");
      form.fname.focus();
      return false;
    }

    if(form.password1.value != "" && form.password1.value == form.password2.value) {
      if(form.password1.value.length < 6) {
        alert("Error: Password must contain at least six characters!");
        form.password1.focus();
        return false;
      }
      if(form.password1.value == form.fname.value) {
        alert("Error: Password must be different from Username!");
        form.password1.focus();
        return false;
      }
      re = /[0-9]/;
      if(!re.test(form.password1.value)) {
        alert("Error: password must contain at least one number (0-9)!");
        form.password1.focus();
        return false;
      }
      re = /[a-z]/;
      if(!re.test(form.password1.value)) {
        alert("Error: password must contain at least one lowercase letter (a-z)!");
        form.password1.focus();
        return false;
      }
      re = /[A-Z]/;
      if(!re.test(form.password.value)) {
        alert("Error: password must contain at least one uppercase letter (A-Z)!");
        form.password.focus();
        return false;
      }
    } else {
      alert("Error: Please check that you've entered and confirmed your password!");
      form.password1.focus();
      return false;
    }

    alert("You entered a valid password: " + form.password1.value);
    return true;
  }