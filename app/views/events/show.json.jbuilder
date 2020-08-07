#json.partial! "events/event", event: @event
$("#modal-window").find(".modal-content").html("<%= j (render 'show') %>");

$("#modal-window").modal();
