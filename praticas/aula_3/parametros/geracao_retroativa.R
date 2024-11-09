library(quarto)
library(lubridate)

data_de_interesse <- c("2024-08-01", "2024-09-01", "2024-10-01")

for(dia in data_de_interesse){
  quarto_render(
    "relatorio_b3.qmd",
    output_file = paste0(dia, ".html"),
    execute_params = list(
      data_minima = dia,
      data_maxima = (as.Date(dia) %m+% months(1))-1,
      incluir_grafico_retornos = TRUE
      )
  )
}
