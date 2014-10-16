![Load Impact](https://www.dropbox.com/s/7j3aatpxqb6c6dk/loadimpact.tiff?dl=0)

[Load Impact](https://loadimpact.com/test/view/1821588)

[Heroku Online](infinite-meadow-8299.herokuapp.com)

# Things done:

- recreated the app in 4.2
- added rack-mini-profiler to monitor

[81_708 ms]

- use puma

[83_874]

- brutish fragment caching on posts, comments and replies

[278_225]

- eager_loading and dont include any comments

```
 post.all.includes(:comments)
 comment.all.includes(:replies)
```

[1_417] ([21_325] with all comments)

If I build myself the whole list of posts, instead of letting Rails form the partials, plus I cache this big blob, the load time is small

[51]


