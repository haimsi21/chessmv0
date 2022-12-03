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
