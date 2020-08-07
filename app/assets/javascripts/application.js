// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//

//= require documentos
//= require turbolinks
// = require jquery3
// = require popper
// = require bootstrap
//= require_tree ./ckeditor


  $( document ).on('turbolinks:load', function() {

  $("#img-Ceiich").click(function(){
    setTimeout(refrescar, 5);
    });



    var img = new Array(
      ['assets/imgInicio/nuevas/AAlegre.png'],
      ['assets/imgInicio/nuevas/AleidaH.png'],
      ['assets/imgInicio/nuevas/AMorales.png'],
      ['assets/imgInicio/nuevas/AquilesN.png'],
      ['assets/imgInicio/nuevas/AVega.png'],
      ['assets/imgInicio/nuevas/AVillareal.png'],
      ['assets/imgInicio/nuevas/CDel Rio.png'],
      ['assets/imgInicio/nuevas/CFlores.png'],
      ['assets/imgInicio/nuevas/EContreras.png'],
      ['assets/imgInicio/nuevas/FContreras.png'],
      ['assets/imgInicio/nuevas/FMorales.png'],
      ['assets/imgInicio/nuevas/GMateos.png'],
      ['assets/imgInicio/nuevas/GTellez.png'],
      ['assets/imgInicio/nuevas/HGarcia.png'],
      ['assets/imgInicio/nuevas/JahelL.png'],
      ['assets/imgInicio/nuevas/JAmozurrutia.png'],
      ['assets/imgInicio/nuevas/JCadena.png'],
      ['assets/imgInicio/nuevas/JGonzalez.png'],
      ['assets/imgInicio/nuevas/JJuarez.png'],
      ['assets/imgInicio/nuevas/Josefina.png'],
      ['assets/imgInicio/nuevas/JSaxe.png'],
      ['assets/imgInicio/nuevas/LMoncada.png'],
      ['assets/imgInicio/nuevas/MAlvarado.png'],
      ['assets/imgInicio/nuevas/MMaass.png'],
      ['assets/imgInicio/nuevas/NBlazquez.png'],
      ['assets/imgInicio/nuevas/OGall.png'],
      ['assets/imgInicio/nuevas/OQuesada.png'],
      ['assets/imgInicio/nuevas/OTena.png'],
      ['assets/imgInicio/nuevas/Paula.png'],
      ['assets/imgInicio/nuevas/PCabrera.png'],
      ['assets/imgInicio/nuevas/PCarrillo.png'],
      ['assets/imgInicio/nuevas/PCastanieda.png'],
      ['assets/imgInicio/nuevas/PVazquez.png'],
      ['assets/imgInicio/nuevas/RLopez.png'],
      ['assets/imgInicio/nuevas/RMansilla.png'],
      ['assets/imgInicio/nuevas/Rosi.png'],
      ['assets/imgInicio/nuevas/SiobahnG.png'],
      ['assets/imgInicio/nuevas/VMendez.png']
    )



    var cont=0;
    var lim = img.length;

    onload=function(){

      rotarImagenes1();



      setInterval(rotarImagenes1,3000);



    }

    function rotarImagenes1(){
      if (cont < lim) {
        switch (cont) {
          case 0:
          document.getElementById("img-ini1").src=img[cont];
          document.getElementById("img-ini2").src=img[lim-1];
          document.getElementById("img-ini3").src=img[lim-2];
          document.getElementById("img-ini4").src=img[lim-3];
          document.getElementById("img-ini5").src=img[lim-4];

            break;
          case 1:
          document.getElementById("img-ini1").src=img[cont];
          document.getElementById("img-ini2").src=img[cont-1];
          document.getElementById("img-ini3").src=img[lim-1];
          document.getElementById("img-ini4").src=img[lim-2];
          document.getElementById("img-ini5").src=img[lim-3];

            break;
          case 2:
          document.getElementById("img-ini1").src=img[cont];
          document.getElementById("img-ini2").src=img[cont-1];
          document.getElementById("img-ini3").src=img[cont-2];
          document.getElementById("img-ini4").src=img[lim-1];
          document.getElementById("img-ini5").src=img[lim-2];
            break;
          case 3:
          document.getElementById("img-ini1").src=img[cont];
          document.getElementById("img-ini2").src=img[cont-1];
          document.getElementById("img-ini3").src=img[cont-2];
          document.getElementById("img-ini4").src=img[cont-3];
          document.getElementById("img-ini5").src=img[lim-1];
            break;
          default:
          document.getElementById("img-ini1").src=img[cont];
          document.getElementById("img-ini2").src=img[cont-1];
          document.getElementById("img-ini3").src=img[cont-2];
          document.getElementById("img-ini4").src=img[cont-3];
          document.getElementById("img-ini5").src=img[cont-4];

        }
        cont++
      } else {
        cont=0;
      }
    }


    $("#acerca").hover(function(){
      $("#img-ini2").hide();
    });

    $(".ocultarimg").hover(function(){
      $("#img-ini2").hide();
      }, function(){
      $("#img-ini2").show();
    });

    $(".ocultarimg").onclick(function(){
      $("#img-ini2").hide();
      }, function(){
      $("#img-ini2").show();
    });



    function getRandomArbitrary() {
      return Math.round(Math.random()*img.length);
    }




});




function refrescar(){
    //Actualiza la página
    location.reload();
  }
