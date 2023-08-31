document.addEventListener("DOMContentLoaded", function () {
    var loginBtn = document.getElementById("LoginBtn");

    loginBtn.addEventListener("click", function (e) {
        var username = document.getElementById("TxtUserName");
        var password = document.getElementById("TxtPassword");
        var isValid = true;
        if (username.value.trim() === "") {
            isValid = false;
            alert("Username is required");
        }
        if (password.value.trim() === "") {
            isValid = false;
            alert("Password is required");
        }
        if (!isValid) {
            e.preventDefault();
        }
        else {

        }
    })
}