bar_libopt <- eventReactive(input$click_bar, {

	fluidRow(

		fluidRow(
			column(1),
			column(2, align = 'center',
				h5("Base R")
			),
			column(2, align = 'center',
				h5("rbokeh")
			),
			column(2, align = 'center',
				h5("plotly")
			),
			column(2, align = 'center',
				h5("highcharts")
			),
			column(2, align = 'center',
				h5("ggplot2")
			),
			column(1)
		),

		fluidRow(
			column(1),
			column(2, align = 'center',
				hr()
			),
			column(2, align = 'center',
				hr()
			),
			column(2, align = 'center',
				hr()
			),
			column(2, align = 'center',
				hr()
			),
			column(2, align = 'center',
				hr()
			),
			column(1)
		),

		fluidRow(
			column(1),
			column(2, align = 'center',
				img(src = 'Rlogonew.png', width = '100px', height = '100px')
			),
			column(2, align = 'center',
				img(src = 'bokeh_logo.png', width = '100px', height = '100px')
			),
			column(2, align = 'center',
				img(src = 'plotly_logo.png', width = '100px', height = '100px')
			),
			column(2, align = 'center',
				img(src = 'highcharts_logo.png', width = '100px', height = '100px')
			),
			column(2, align = 'center',
				img(src = 'ggplot2_logo.png', width = '100px', height = '100px')
			),
			column(1)
		),

		fluidRow(
			column(1),
			column(2, align = 'center',
				hr()
			),
			column(2, align = 'center',
				hr()
			),
			column(2, align = 'center',
				hr()
			),
			column(2, align = 'center',
				hr()
			),
			column(2, align = 'center',
				hr()
			),
			column(1)
		)

	)

})

output$vizlib_bar <- renderUI({
	bar_libopt()
})

observeEvent(input$click_bar, {
	updateNavbarPage(session, 'mainpage', selected = 'tab_viz_lib')
})