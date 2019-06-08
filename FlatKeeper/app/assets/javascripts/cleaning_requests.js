
document.addEventListener('turbolinks:before-cache', function(){
    $('#MisPropiedades').DataTable().destroy();

})

document.addEventListener('turbolinks:load', function(){

    $('#MisPropiedades').DataTable();
})