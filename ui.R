ui <- dashboardPage(
    skin = "black",
    
    # dashboardHeader
    dashboardHeader(
        # Set height of dashboardHeader
        shiny::tags$li(class = "dropdown",
                       tags$style(".main-header {max-height: 300px}"),
                       tags$style(".main-header .logo {height: 300px;}"),
                       tags$style(".sidebar-toggle {height: 300px; padding-top: 1px !important;}"),
                       tags$style(".navbar {min-height:300px !important}")
        ),
        title = div(img(src="breeder-logo.png", height = "300px"))),
    
    dashboardSidebar(
        shiny::tags$style(".main-sidebar {float:top; margin-top:60px}")
        ),
    
    # Body
    dashboardBody()
)