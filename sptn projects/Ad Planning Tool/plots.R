library(ggplot2)
library(dplyr)


banner_sales <- read.csv("~/GitHub/sptn projects/Ad Planning Tool/banner_sales.csv")
store_sales <- read.csv("~/GitHub/sptn projects/Ad Planning Tool/store_sales.csv")


### Banner plots

ggplot(banner_sales, aes(PCT))  + 
  geom_histogram(binwidth = .01) + 
  xlim(0, 1) + 
  ylim(0, 1500) +
  facet_wrap(~BANNER_NO)

### Store plots

ggplot(filter(store_sales, BANNER_NO == 110), aes(PCT))  + 
  geom_histogram(binwidth = .01) + 
  xlim(0, 1) + 
  ylim(0, 50) +
  facet_wrap(~LOCATION_ID)


ggplot(filter(store_sales, BANNER_NO == 210), aes(PCT))  + 
  geom_histogram(binwidth = .01) + 
  xlim(0, 1) + 
  ylim(0, 50) +
  facet_wrap(~LOCATION_ID)


ggplot(filter(store_sales, BANNER_NO == 250), aes(PCT))  + 
  geom_histogram(binwidth = .01) + 
  xlim(0, 1) + 
  ylim(0, 50) +
  facet_wrap(~LOCATION_ID)


distinct(select(banner_sales, ANCHOR_ID))

banner_sales %>%
  filter(ANCHOR_ID == 2775) %>%
  arrange(BANNER_NO, FISCAL_WEEK_NO)

z<-
banner_sales %>%
  group_by(ANCHOR_ID) %>%
  summarise(min(PCT), mean(PCT), max(PCT))


















########################################

# ad_spend_by_banner_location_anchor_week <- 
#   ad_spend_by_banner_location_anchor_week %>%
#   mutate(pct = AD_SPEND / SPEND)
# 
# out <- 
# ad_spend_by_banner_location_anchor_week %>%
#   filter(LOCATION_ID < 3000) %>%
#   group_by(ANCHOR_ID) %>%
#   summarise(x = mean(pct))
# 
# qplot(data = out, x)
# 
# ggplot(ad_spend_by_anchor_week, aes(pct))  + geom_histogram()
# 
# qplot(ad_spend_by_anchor_week$pct, binwidth=.005)
# 
# 
# ggplot(data = ad_spend_by_anchor_week, aes(pct, SPEND)) + geom_point()
# 
# 
# ggplot(data = ad_spend_by_anchor_week, aes(pct, SPEND)) + geom_smooth()
# 
# ad_spend_by_banner_anchor_week <- 
# ad_spend_by_banner_anchor_week %>%
#   mutate(pct = AD_SPEND / SPEND)
# 
# ggplot(ad_spend_by_banner_anchor_week, aes(pct))  + 
#   geom_histogram(binwidth = .01) + 
#   xlim(0, 1) + 
#   ylim(0, 1000) +
#   facet_wrap(~BANNER_NO)
# 
# 
# ggplot(ad_spend_by_banner_location_anchor_week, aes(pct))  + 
#   geom_histogram(binwidth = .01) + 
#   xlim(0, 1) + 
#   ylim(0, 200) +
#   facet_wrap(~LOCATION_ID)
# 
# 
# ggplot(filter(ad_spend_by_banner_location_anchor_week, LOCATION_ID < 3000), aes(pct))  + 
#   geom_histogram(binwidth = .005) + 
#   xlim(0, 1) + 
#   ylim(0, 50) +
#   facet_wrap(~LOCATION_ID)
# 
# 
# 
# ggplot(filter(ad_spend_by_banner_location_anchor_week, LOCATION_ID > 3000), aes(pct))  + 
#   geom_histogram(binwidth = .001) + 
#   xlim(0, 1) + 
#   ylim(0, 50) +
#   facet_wrap(~LOCATION_ID)
# 
# #################################################
# 
# 
# ggplot(ad_spend_by_banner_anchor_week, aes(PCT))  + 
#   geom_histogram(binwidth = .01) + 
#   xlim(0, 1) + 
#   ylim(0, 1500) +
#   facet_wrap(~BANNER_NO)
# 
# ggplot(filter(ad_spend_by_banner_anchor_week, BANNER_NO == 110), aes(PCT))  + 
#   geom_histogram(binwidth = .01) + 
#   xlim(0, 1) + 
#   ylim(0, 1000) +
#   facet_wrap(~BANNER_NO)

