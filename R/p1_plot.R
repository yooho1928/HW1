library(ggplot2)

dat = read.csv('data/p1_data.csv')

p = ggplot(dat, aes(x = x, y = y)) +
  geom_point(color = 'black', alpha = 0.6) +
  geom_smooth(method = 'loess', formula = y ~ x, span = 0.3,
              color = 'blue', linewidth = 1) +
  labs(title = 'Scatter plot and fitted regression curve',
       x = 'x', y = 'y') +
  theme_minimal()

print(p)
