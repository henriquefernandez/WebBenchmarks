# Results routing the url and rendering a json:

## ab -c 1000 -n 10000 

1. Go (http/net): 15541.32 req/s
2. Elixir (plug): 11207.14 req/s
3. Haskell (happstack): 9374.21 req/s
4. Node (express): 8010.86 req/s
5. Php7 (phalcon): 2220.77 req/s
6. Ruby (sinatra): ...