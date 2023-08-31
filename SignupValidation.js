function validateForm() {
    var firstName = document.getElementById('<%= FirstName.ClientID %>').value;
    var lastName = document.getElementById('<%= LastName.ClientID %>').value;
    var userName = document.getElementById('<%= UserName.ClientID %>').value;
    var email = document.getElementById('<%= Email.ClientID %>').value;
    var password = document.getElementById('<%= Password.ClientID %>').value;
    var confirmPwd = document.getElementById('<%= ConfirmPwd.ClientID %>').value;

    var letters = /^[A-Za-z]+$/;
    var emailPattern = /^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,4}$/;
    var passwordPattern = /^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]{8,}$/;

    var errorMessages = [];

    if (!firstName.match(letters)) {
        errorMessages.push('FirstName must contain only alphabetic characters.');
    }
    if (!lastName.match(letters)) {
        errorMessages.push('LastName must contain only alphabetic characters.');
    }
    if (!userName.match(/^[A-Za-z][A-Za-z0-9_]*$/)) {
        errorMessages.push('Username must start with a letter and can only contain letters, numbers, and underscores.');
    }
    if (!email.match(emailPattern)) {
        errorMessages.push('Email is not in a valid format.');
    }
    if (!password.match(passwordPattern)) {
        errorMessages.push('Password must be at least 8 characters and contain at least one uppercase letter, one lowercase letter, one numeric digit, and one special character.');
    }
    if (password !== confirmPwd) {
        errorMessages.push('Confirm Password does not match the Password.');
    }

    var errorLabel = document.getElementById('<%= SignUpErrorLabel.ClientID %>');
    if (errorMessages.length > 0) {
        errorLabel.innerHTML = errorMessages.join('<br>');
        errorLabel.style.color = 'red';
        return false;
    } else {
        errorLabel.innerHTML = '';
        return true;
    }
}