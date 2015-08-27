// Making Header Dynamic so that appropriate header option is highlighted
// Header.jsp
var url = window.location;
// Will only work if string in href matches with location
$('ul.nav a[href="'+ url +'"]').parent().addClass('active');

// Will also work for relative and absolute hrefs
$(' a').filter(function() {
    return this.href == url;
}).parent().addClass('active');
$('.dropdown a').filter(function() {
    return this.href == url;
}).parent().parent().parent().addClass('active');




// Drag and Drop
// importData.jsp
$(function() {

  $('#dragSource tr').draggable({
    helper: function() {
      var selected = $('#dragSource input:checked').parents('tr');
      if (selected.length === 0) {
        selected = $(this);
      }
      var container = $('<div/>').attr('id', 'draggingContainer');
      container.append(selected.clone());
      return container;
    }
  });

  $('#dropTarget').droppable({
    tolerance: 'pointer',
    drop: function(event, ui) {
      $(this).append(ui.helper.children());
    }
  });

 
});

// Code for Multiple Open Modals 
//  dashboard.jsp
    

 $(document).ready(function() {
$('.modal').on('hidden.bs.modal', function( event ) {
                $(this).removeClass( 'fv-modal-stack' );
                $('body').data( 'fv_open_modals', $('body').data( 'fv_open_modals' ) - 1 );
                });


$( '.modal' ).on( 'shown.bs.modal', function ( event ) {
                   
                   // keep track of the number of open modals
                   
                   if ( typeof( $('body').data( 'fv_open_modals' ) ) == 'undefined' )
                   {
                     $('body').data( 'fv_open_modals', 0 );
                   }
                   
                     
                   // if the z-index of this modal has been set, ignore.
                        
                if ( $(this).hasClass( 'fv-modal-stack' ) )
                        {
                        return;
                        }
                   
                $(this).addClass( 'fv-modal-stack' );

                $('body').data( 'fv_open_modals', $('body').data( 'fv_open_modals' ) + 1 );

                $(this).css('z-index', 1040 + (10 * $('body').data( 'fv_open_modals' )));

                $( '.modal-backdrop' ).not( '.fv-modal-stack' )
                        .css( 'z-index', 1039 + (10 * $('body').data( 'fv_open_modals' )));


                $( '.modal-backdrop' ).not( 'fv-modal-stack' )
                        .addClass( 'fv-modal-stack' ); 

                 });       
        });
        
       
     
     
     
     
     //groundwaterCommon.jsp
     
     function bigcalculator(){
    var casingDepth=parseFloat($('#casingDepth').val());
    var depthToWater=parseFloat($('#depthToWater').val());
//    var stickup=parseFloat($('#stickup').val());
    var wellCapacity=parseFloat($('#wellCapacity').val());
    var purgeRate=parseFloat($('#purgeRate').val());
    var beginTime=parseFloat($('#timeBegin').val());
    var endTime=parseFloat($('#timeEnd').val());
    $('#wellCapacity2').text((wellCapacity));
    var waterColumnHeight=casingDepth-(depthToWater); //-stickup);
    $('#waterColumnHeight').text((waterColumnHeight));
    var wellPurgeVolume=waterColumnHeight*wellCapacity;
    $('#wellPurgeVolume').text((wellPurgeVolume));
    var minimumPurgeVolume=wellPurgeVolume*1.5;
    $('#minimumPurgeVolume').text((minimumPurgeVolume));
    $('#quarterWellPurge').text((wellPurgeVolume*0.25));
    $('#minimumPurgeTime').text((minimumPurgeVolume/purgeRate));
    var totalVolumesPurged=(endTime-beginTime)*purgeRate;
    $('#totalVolumesPurged').text((totalVolumesPurged));
    var wellVolumesPurged=((totalVolumesPurged/wellPurgeVolume));
    $('#wellVolumesPurged').text((wellVolumesPurged));

  };
        