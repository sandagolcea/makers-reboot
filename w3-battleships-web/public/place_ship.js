function validateForm() {
    var x = document.forms["ship-form"]["coordinates"].value;
    if (x == null || x == "") {
        alert("Coordinates must be filled out");
        return false;
    }
}
