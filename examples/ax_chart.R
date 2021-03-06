library(dplyr)
data("diamonds", package = "ggplot2")

##  Stack bar type
# default is dodge
apex(
  data = count(diamonds, cut, color),
  mapping = aes(x = cut, y = n, fill = color)
)

# stack
apex(
  data = count(diamonds, cut, color),
  mapping = aes(x = cut, y = n, fill = color)
) %>%
  ax_chart(stacked = TRUE)

# stack filled
apex(
  data = count(diamonds, cut, color),
  mapping = aes(x = cut, y = n, fill = color)
) %>%
  ax_chart(stacked = TRUE, stackType = "100%")




# Toolbar --------------------------------------

# Hide the toolbar
apex(
  data = count(diamonds, cut, color),
  mapping = aes(x = cut, y = n, fill = color)
) %>%
  ax_chart(toolbar = list(show = FALSE))

# Hide download buttons
data("economics", package = "ggplot2")
apex(
  data = economics,
  mapping = aes(x = date, y = pce), 
  type = "line"
) %>%
  ax_chart(
    toolbar = list(tools= list(download = FALSE))
  )



# Zoom -----------------------------------------

# Disable
apex(
  data = economics,
  mapping = aes(x = date, y = pce), 
  type = "line"
) %>%
  ax_chart(
    zoom = list(enabled = FALSE)
  )


# Auto-scale Y axis
apex(
  data = economics,
  mapping = aes(x = date, y = pce), 
  type = "line"
) %>%
  ax_chart(
    zoom = list(autoScaleYaxis = TRUE)
  )
