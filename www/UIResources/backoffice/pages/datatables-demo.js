/*
 Template Name: Lunoz - Admin & Dashboard Template
 Author: Myra Studio
 File: Datatables
*/

$(document).ready(function () {
    $("#basic-datatable").DataTable({
        language: {
            paginate: {
                previous: "<i class='mdi mdi-chevron-left'>",
                next: "<i class='mdi mdi-chevron-right'>"
            },
            lengthMenu: "Afficher _MENU_ enrigistrements par page",
            zeroRecords: "Rien n'a été trouvé - desolé",
            info: "Affichage de la page _PAGE_ sur _PAGES_",
            infoEmpty: "Aucun enrégistrements disponible",
            infoFiltered: "(filtré de _MAX_ enregistrement)",
            search : "Recherche"

        },
        drawCallback: function () {
            $(".dataTables_paginate > .pagination").addClass("pagination-rounded")
        }
    });
    var a = $("#datatable-buttons").DataTable({
        lengthChange: !1,
        buttons: ["copier", "imprimer", "pdf"],
        language: {
            paginate: {
                previous: "<i class='mdi mdi-chevron-left'>",
                next: "<i class='mdi mdi-chevron-right'>"
            },
            lengthMenu: "Afficher _MENU_ enrigistrements par page",
            zeroRecords: "Rien n'a été trouvé - desolé",
            info: "Affichage de la page _PAGE_ sur _PAGES_",
            infoEmpty: "Aucun enrégistrements disponible",
            infoFiltered: "(filtré de _MAX_ enregistrement)",
            search : "Recherche"
        },
        drawCallback: function () {
            $(".dataTables_paginate > .pagination").addClass("pagination-rounded")
        }
    });
    $("#selection-datatable").DataTable({
        select: {
            style: "multi"
        },
        language: {
            paginate: {
                previous: "<i class='mdi mdi-chevron-left'>",
                next: "<i class='mdi mdi-chevron-right'>"
            },
            lengthMenu: "Afficher _MENU_ enrigistrements par page",
            zeroRecords: "Rien n'a été trouvé - desolé",
            info: "Affichage de la page _PAGE_ sur _PAGES_",
            infoEmpty: "Aucun enrégistrements disponible",
            infoFiltered: "(filtré de _MAX_ enregistrement)",
            search : "Recherche"
        },
        drawCallback: function () {
            $(".dataTables_paginate > .pagination").addClass("pagination-rounded")
        }
    }), $("#key-datatable").DataTable({
        keys: !0,
        language: {
            paginate: {
                previous: "<i class='mdi mdi-chevron-left'>",
                next: "<i class='mdi mdi-chevron-right'>"
            },
            lengthMenu: "Afficher _MENU_ enrigistrements par page",
            zeroRecords: "Rien n'a été trouvé - desolé",
            info: "Affichage de la page _PAGE_ sur _PAGES_",
            infoEmpty: "Aucun enrégistrements disponible",
            infoFiltered: "(filtré de _MAX_ enregistrement)",
            search : "Recherche"
        },
        drawCallback: function () {
            $(".dataTables_paginate > .pagination").addClass("pagination-rounded")
        }
    }), a.buttons().container().appendTo("#datatable-buttons_wrapper .col-md-6:eq(0)"), $("#complex-header-datatable").DataTable({
        language: {
            paginate: {
                previous: "<i class='mdi mdi-chevron-left'>",
                next: "<i class='mdi mdi-chevron-right'>"
            },
            lengthMenu: "Afficher _MENU_ enrigistrements par page",
            zeroRecords: "Rien n'a été trouvé - desolé",
            info: "Affichage de la page _PAGE_ sur _PAGES_",
            infoEmpty: "Aucun enrégistrements disponible",
            infoFiltered: "(filtré de _MAX_ enregistrement)",
            search : "Recherche"
        },
        drawCallback: function () {
            $(".dataTables_paginate > .pagination").addClass("pagination-rounded")
        },
        columnDefs: [{
            visible: !1,
            targets: -1
        }]
    }), $("#state-saving-datatable").DataTable({
        stateSave: !0,
        language: {
            paginate: {
                previous: "<i class='mdi mdi-chevron-left'>",
                next: "<i class='mdi mdi-chevron-right'>"
            },
            lengthMenu: "Afficher _MENU_ enrigistrements par page",
            zeroRecords: "Rien n'a été trouvé - desolé",
            info: "Affichage de la page _PAGE_ sur _PAGES_",
            infoEmpty: "Aucun enrégistrements disponible",
            infoFiltered: "(filtré de _MAX_ enregistrement)",
            search : "Recherche"
        },
        drawCallback: function () {
            $(".dataTables_paginate > .pagination").addClass("pagination-rounded")
        }
    })
});