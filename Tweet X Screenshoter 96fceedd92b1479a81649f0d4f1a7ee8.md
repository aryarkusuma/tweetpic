# Tweet/X Screenshoter

[TweetPic Service Workflow](Tweet%20X%20Screenshoter%2096fceedd92b1479a81649f0d4f1a7ee8/TweetPic%20Service%20Workflow%20809c25076875459ab8e6cca7591c69f3.md)

[Noted Problemo](Tweet%20X%20Screenshoter%2096fceedd92b1479a81649f0d4f1a7ee8/Noted%20Problemo%20f9b0c43628b642b597223f04d73fb6d7.md)

[Security-ish](Tweet%20X%20Screenshoter%2096fceedd92b1479a81649f0d4f1a7ee8/Security-ish%20fa619d07dcad46538bb9ce835a9dde46.md)

[Etc—](Tweet%20X%20Screenshoter%2096fceedd92b1479a81649f0d4f1a7ee8/Etc%E2%80%94%20b9115530097a4ba2822282354d7abe27.md)

---

<aside>
💡 **Simplefied twetpic app workflow**

</aside>

1. User will input the twitter tweet url on the tweetpic website.
2. Send user inputed tweet url to publicly tunneled rest api server (local service - bare metal).
3. Local service will check if that tweet exist.
4. Local service will take screenshot (and saved in local storage) of the tweet 
5. Local service would response with the image link (image served by tunneled local file server) of a screenshoted tweet.