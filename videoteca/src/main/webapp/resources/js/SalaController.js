/* 
 * To change this license header, choose License Headesala in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
(function($) {
    $(document).ready(function() {
        function fetchSalaList() {
            $.ajax({
                contentType: 'application/json; charset=utf-8',
                url: "administrarSala.htm",
                type: "POST",
                dataType: 'json',
                async: true
            });
        };

        $('#saveOrUpdate').submit(function() {
            var numero = $('#numero').val();
            var tipo = $('#tipo').val();
            var capacidad = $('#capacidad').val();
            if (numero.length !== 0 && tipo.length !== 0 && capacidad.length !== 0) {
                var json = {"numero": numero, "tipo": tipo, "capacidad": capacidad};
                console.log(json);
                $.ajax({
                    contentType: 'application/json; charset=utf-8',
                    type: "POST",
                    url: "saveOrUpdate.htm",
                    dataType: 'json',
                    data: JSON.stringify(json),
                    success: function() {
                        fetchSalaList();
                    },
                    error: function() {
                        if ($('#registrar').val() === 'Registrar') {
                            alert("Agregado Correctamente!");
                        } else {
                            alert("Modificado Correctamente!");
                        }
                    }
                });
                
            } else {
                alert("Debe completar todos los campos!");
            }
        });

        $('.btn-danger').on('click', function(e) {
            if (confirm("¿Desea eliminar la sala " + $(this).data('id') + "?")) {
                e.preventDefault();
                var id = $(this).data('id');
                console.log(id);
                $.ajax({
                    contentType: 'application/json; charset=utf-8',
                    url: "remove/" + id,
                    type: "POST",
                    data: id,
                    async: true,
                    success: function() {
                        alert("Eliminado correctamente");
                        fetchSalaList();

                    },
                    error: function() {
                        alert("Eliminado correctamente");
                        fetchSalaList();
                    }
                });
            }
        });

        $('.btn-success').on('click', function(e) {
            e.preventDefault();
            var salaId = $(this).data('id');
            console.log(salaId);
            $('#registrar').val("Editar");
            $.ajax({
                contentType: 'application/json; charset=utf-8',
                url: "get/" + salaId,
                type: "GET",
                dataType: "json",
                async: true,
                success: function(obj) {
                    $('#numero').val(obj.numero);
                    $('#tipo').val(obj.tipo);
                    $('#capacidad').val(obj.capacidad);
//                    fetchSalaList();
                }
            });
        });

    });

}(jQuery));