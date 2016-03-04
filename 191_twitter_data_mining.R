# Load twitteR Library and Set Oauth Options
library('twitteR')
options(httr_oauth_cache = T)

# Declare Twitter API Credentials
# https://apps.twitter.com
api_key = "api_key";
api_secret = "api_secret"
token = "token"
token_secret = "token_secret"

# Create Twitter Connection
setup_twitter_oauth(api_key, api_secret, token, token_secret)

# Extracts Twitter Data
debate = searchTwitter("#PiliPinasDebates2016", n=25)
d = do.call("rbind", lapply(debate, as.data.frame))
write.csv(d, file="twitterdata PiliPinasDebates2016 25.csv")

aldub = searchTwitter("#aldub", n=25)
a = do.call("rbind", lapply(aldub, as.data.frame))
write.csv(a, file="twitterdata aldub 25.csv")

jadine = searchTwitter("#JaDine", n=25)
j = do.call("rbind", lapply(jadine, as.data.frame))
write.csv(j, file="twitterdata jadine 25.csv")

oscars = searchTwitter("#oscars", n=25)
o = do.call("rbind", lapply(oscars, as.data.frame))
write.csv(o, file="twitterdata oscars 25.csv")


# References
# http://bogdanrau.com/blog/collecting-tweets-using-r-and-the-twitter-search-api/
# http://stackoverflow.com/questions/31085128/error-in-check-twitter-oauth-oauth-authentication-error-cant-pass-oauth