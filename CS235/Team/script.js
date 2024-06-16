document.getElementById('teamForm').addEventListener('submit', function(event) {
    event.preventDefault();  // Prevent form from submitting normally

    // Get form values
    var teamId = document.getElementById('teamId').value;
    var teamName = document.getElementById('teamName').value;
    var mainStadium = document.getElementById('mainStadium').value;
    var city = document.getElementById('city').value;

    // Validate form values
    if (!teamId || !teamName || !mainStadium || !city) {
        alert('Please fill in all fields');
        return;
    }

    // Add new team to the table
    var table = document.getElementById('teamTable');
    var row = table.insertRow(-1);
    row.insertCell(0).innerHTML = teamId;
    row.insertCell(1).innerHTML = teamName;
    row.insertCell(2).innerHTML = mainStadium;
    row.insertCell(3).innerHTML = city;

    // Clear form
    document.getElementById('teamForm').reset();
});
