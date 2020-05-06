Always add good labels with the "labs()" function
  Title (obvious)
  subtitle (small below title)
  caption (small bottom right of plot)
  x (x-axis)
  y (y-axis)
  colour (re-labels a colour legend)

We can replace label with equation using
  "labs(x=quote(sum(x[i]^2, i == 1, n)))"

geom_text adds Annotations
  "geom_text(aes(label = model), data = best_in_class)"

geom_label is better
  "geom_label(aes(label = model), data = best_in_class, nudge_y = 2, alpha = 0.5)"
  ^^^ This might cause things to fall of page or overlap
  So use "ggrepel::geom_label(aes(label = model), data = best_in_class, nudge_y = 2, alpha = 0.5)"
 
Want to put one annotation in top right
  Summarise with the max x and y's using a "label" as the text
  Then use "geom_text(aes(label = label), data = label, vjust = "top", hjust = "right")"
  
Scale the axes
  "scale_y_continuous(breaks = seq(15, 40, by = 5))"
  "scale_x_date(NULL, breaks = presidential$start, date_labels = "'%y")"
