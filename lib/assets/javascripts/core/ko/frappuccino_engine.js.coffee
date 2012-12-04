namespace "core.ko"

class core.ko.FrappuccinoEngine extends ko.nativeTemplateEngine

    constructor: (@app) ->
        @allowTemplateRewriting = false

    bind_helpers: ( binding_context ) ->
        @app.bind_helper( "application", binding_context )

        controller_helper_name = app.request.active_controller.name
        @app.bind_helper( controller_helper_name, binding_context )

    renderTemplateSource: (templateSource, bindingContext, options) ->
        @bind_helpers( bindingContext )           
        super(templateSource, bindingContext, options)