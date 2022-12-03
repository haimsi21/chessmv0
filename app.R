library(shiny)
library(DT)
library(tidyverse)
library(plotly)
library(bslib)

  #############################################################################################################

ui <- fluidPage(
  # Application title
  titlePanel(
    windowTitle = "Chess Mining φ",
    title = div(" ♔ ♕ ♖ ♗ ♘ ♙ Chess Mining ♟ ♞ ♝ ♜ ♛ ♚",align = "center")
  ),
  
  navbarPage(
    img(src = 'mini.png', height = '27px'),
    
    
    tabPanel("Inicio",
             sidebarLayout(
               mainPanel(
                 width = 9,
                 h1("Las ideas principales son:", align =
                      "center"),
                 br(),
                 br(),
                 h2("1. Construye un Blockchain entre todφs", align =
                      "center"),
                 hr(),
                 h2("2. Almacena información inmutable", align =
                      "center"),
                 hr(),
                 h2("3. Crea dinero con nuestros datos", align =
                      "center"),
                 hr(),
                 h2("4. Inteligencia Artificial para la Humanidad", align =
                      "center"),
                 hr(),
                 h2("5. Irracionales= φ, e y π, velocidad de la luz", align =
                      "center"),
                 hr(),
                 h2("6. Unidad tecnológica y social",  align =
                      "center"),
                 hr(),
                 br()
                 
                 
                 
               ),
               
               sidebarPanel(
                 width = 3,
                 textOutput("greeting"),
                 h2(" Regístrate ", align = "center"),
                 h5("¡comienza a minar hoy!", align =
                      "center"),
                 textInput("nam", "Nombre(s):", ""),
                 textInput("sur", "Apellido(s):", ""),
                 dateInput(
                   "date",
                   "Fecha de nacimiento:",
                   startview = "decade",
                   value = "2012-12-21",
                   format = "dd / M / yyyy",
                   width = "40%"
                 ),
                 selectInput("pais", "País", choices = pais_df$nombre, width = "60%"),
                 actionButton("calculate", "¡Vamos!", align =
                                "center"),
                 br(),
                 hr(),
                 helpText(
                   "*Tu información es privada, valiosa y escriptada. ♫ Recuérdalo ♪",
                   align = "center"))
             ),),
    
    navbarMenu("Matemáticas",
               tabPanel(
                 "Irracionales",
                 sidebarLayout(
                   mainPanel(
                     width = 9,
                     div(h2("Los números irracionales han permancido un misterio para la humanidad hasta hoy.",  align="center", width="72%")),
                     div(h3("Comprueba por ti mismo el comportamiento de φ, e y π", align="center", width="72%")),
                     div(h3("Irracionales", align = "center")),
                     div(plotlyOutput("p"), align = "center"),
                     br(),
                     br()
                   ),
                   
                   sidebarPanel (
                     width = 3,
                    selectInput(
                       "irra",
                       "Elige tu irracional",
                       c(
                         "Fi (φ)" = "Fi",
                         "Exponencial (e)" = "Ex",
                         "Pi (π)" = "Pi",
                         "Log φ" = "lfi",
                         "Log e" = "lex",
                         "Log π" = "lpi",
                         "Log+Abs φ" = "lafi",
                         "Log+Abs e" = "laex",
                         "Log+Abs π" = "lapi"
                       ),
                       selected = "Pi",
                       width = "50%"
                     ),
                     hr(),
                     
                     sliderInput(
                       "num",
                       "Número de observaciones",
                       min = 0,
                       max = 186624,
                       value = 21600,
                       step = 72
                     ),
                     hr(),
                     sliderInput(
                       "tra",
                       "Transparencia (%)",
                       min = 0,
                       max = 1,
                       value = .72,
                       step = 0.016
                     ),
                     hr(),
                     sliderInput(
                       "tam",
                       "Tamaño del punto (px)",
                       min = 0,
                       max = 21.6,
                       value = 3,
                       step = 0.1
                     ),
                     #actionButton("resetBtn", "Reajustar"),
                     hr(),
                     sliderInput(
                       "alt",
                       "Alto (px)",
                       min = 21,
                       max = 1728,
                       value = 777,
                       step = 27
                     ),
                     sliderInput(
                       "anh",
                       "Ancho (px)",
                       min = 21,
                       max = 1728,
                       value = 777,
                       step = 27
                     ),
                     h3("Irracionales | φ | e | π |"),
                     textOutput("onum"),
                     br()
                   ),
                 ),
                 ###//////////////////////////////////////////////////////////
                 br(),
                 hr(),
                 sidebarLayout(
                   mainPanel(
                     width = 9,
                     br(),
                     br(),
                     div(h3("Cuadrado Mágico", align = "center")),
                     div(plotlyOutput("cm"), align = "center")
                   ),
                   sidebarPanel(
                     width = 3,
                     sliderInput(
                       "ncc",
                       "Número de observaciones",
                       min = 0,
                       max = 186624,
                       value = 21600,
                       step = 72
                     ),
                     selectInput(
                       "siz",
                       "Tamaño del punto (px)",
                       c(
                         "1",
                         "φ = 1.618" = "1.61801",
                         "2",
                         "e = 2.718" = "2.7182",
                         "3",
                         "π = 3.1415" = "3.1415",
                         "4",
                         "5",
                         "6",
                         "7"
                       )
                     ),
                     sliderInput(
                       "tra1",
                       "Transparencia (%)",
                       min = 0,
                       max = 1,
                       value = 1,
                       step = 0.11
                     ),
                     sliderInput(
                       "alt1",
                       "Alto (px)",
                       min = 21,
                       max = 1728,
                       value = 960,
                       step = 27
                     ),
                     sliderInput(
                       "anh1",
                       "Ancho (px)",
                       min = 21,
                       max = 1728,
                       value = 960,
                       step = 27
                     ),
                     selectInput("col1", "Color 1:", choices = col1),
                     selectInput("col2", "Color 2:", choices = col1)
                   )
                 )
               ),
               tabPanel("Velicidad de la Luz",),
               
               tabPanel("Números Primos",),
               
    ),
    
    tabPanel(
      "♞ Minería ♞",
      br(),
      
      h1("5 Reglas del Juego", align = "center"),
      br(),
      
      h2("1. Protocolo de consenso: 1+1...", align = "center"),
      br(),
      h2("2. Elige tu color: negro, blanco o dorado", align = "center"),
      br(),
      h2("3. Tamaño de bloque <= 1 Quijote (1mb)", align = "center"),
      br(),
      h2("4. Tiempo: no más de 1000 bloques", align = "center"),
      br(),
      h2("5. Creación de monedas", align = "center"),
      br(),
      p(
        "Para poder minar será necesario contar con algún dispositivo
                        capaz de realizar la regla 1 y conectarse a una red celular o WiFi
                        en el día que el bloque sea minado",
        align = "center"
      ),
      br(),
    ),
    
    
    tabPanel("♞ NFT ♞",),
    tags$script(
      HTML(
        "var header = $('.navbar > .container-fluid');
                              header.append('<div style=\"float:right; padding-top: 8px\"><button id=\"signin\" type=\"button\" class=\"btn btn-primary action-button\" onclick=\"signIn()\">Log in</button></div>')"
      )
    )
  )
)

cc2<- tibble(col1)
cc1<- sample(col1,1)
fi <- (sqrt(5) + 1) / 2
pais_df <- read.csv("paises.csv")
col1<- read.csv ("color.txt", sep="", header = F)  

server <- function(input, output, session) {
  ### Inicio
  output$greeting <- renderText({
    paste(
      "Bienevido al futuro donde las máquinas siguen tus órdenes,",
      input$nam,
      " ",
      input$sur
    )
  })
  
  
  output$onum <- renderText(input$num)
  
  
  output$p <- renderPlotly({
    dff <- tibble(read_csv("irra_c.csv"))
    df <- dff %>%
      filter(id <= input$num)
    
    
    plot_ly (
      df,
      type = "scatterpolargl",
      mode = "markers",
      opacity = input$tra,
      height = input$alt,
      width = input$anh,
      color =  ~ id,
      showscale = F
    ) %>% #color=I("red"))
      
      add_trace(
        r = ~ get(input$irra),
        theta = ~ id,
        name = input$irra,
        marker = list(size = input$tam)
      ) %>%
      layout(polar = list(
        showticklabels = FALSE,
        showgrid = T,
        visible = T,
        gridcolor = "blue"
      )) %>%
      layout(xaxis = list(
        title = "",
        zeroline = F,
        gridwidth = 0.1,
        visible = T
      )) %>%
      layout(yaxis = list(visible = T)) %>%
      config(displaylogo = F)
  })
  
  
  output$cm <- renderPlotly({
    dff <- tibble(read_csv("irra_c.csv"))
    df <- dff %>%
      filter(id <= input$ncc)
    
    
    plot_ly(
      data = df,
      x =  ~ Fi,
      y =  ~ Ex,
      z =  ~ Pi,
      opacity = input$tra1,
      type = "scatter3d",
      mode = "markers",
      hoverinfo = "skip",
      marker = list(size = input$siz, 
                    color="black"),
      width = input$anh1,
      height = input$alt1,
      colors =  c(input$col1, input$col2)
    ) %>%
      hide_colorbar() %>%
      layout(scene = list(
        xaxis = list(
          visible = F,
          showgrid = F,
          showline = F,
          zeroline = F
        ),
        yaxis = list(
          visible = F,
          showgrid = F,
          showline = F,
          zeroline = F
        ),
        zaxis = list(visible = F)
      )) %>%
      config(displaylogo = F, displayModeBar = T)
  })
  
}

shinyApp(ui, server)
