# Results routing the url and rendering a json:

## ab -c 500 -n 10000 

1. Php7 (phalcon): 17460.91 req/s 
2. Go (http/net): 15541.32 req/s
3. Elixir (plug): 11293.97 req/s
4. Haskell (happstack): 10673.60 req/s
5. Node (express): 8996.57 req/s
6. Ruby (sinatra): 1268.21 req/s