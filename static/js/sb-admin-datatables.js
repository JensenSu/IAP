// Call the dataTables jQuery plugin
$(document).ready(function() {
  $('#dataTable').DataTable({
      "bSortable": false, "aTargets": [0]
  });
});
