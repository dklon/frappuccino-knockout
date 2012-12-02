namespace "core.ko"

class core.ko.FrappuccinoRenderer extends core.Renderer

    # TODO: pretty sure this method is redundant now, so remove if so
    _registerTemplate: (name, content) ->
        content.attr( "id", name )
        $('body').append( content )

    render_template: ( template, data, target ) ->
        target.html $( "<div></div>" ).attr 'data-bind',
                "template: 'template:#{template}'"

        ko.applyBindings( data || {}, target[0] )