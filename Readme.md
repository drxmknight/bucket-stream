# Bucket-stream 

Herramienta para encontrar buckets S3 publicos

## Documentacion

Herramienta basada en https://github.com/eth0izzle/bucket-stream

## Ejecucion

Descargar y bajar el contenedor con:

```bash
docker container run --rm --name bucket-stream drxmknight/bucket-stream -h
```

## Opciones

```bash
optional arguments:
  -h, --help            Show this help message and exit
  --only-interesting    Only log 'interesting' buckets whose contents match
                        anything within keywords.txt (default: False)
  --skip-lets-encrypt   Skip certs (and thus listed domains) issued by Let's
                        Encrypt CA (default: False)
  -t , --threads        Number of threads to spawn. More threads = more power.
                        Limited to 5 threads if unauthenticated.
                        (default: 20)
  --ignore-rate-limiting
                        If you ignore rate limits not all buckets will be
                        checked (default: False)
  -l, --log             Log found buckets to a file buckets.log (default:
                        False)
  -s, --source          Data source to check for bucket permutations. Uses
                        certificate transparency logs if not specified.
                        (default: None)
  -p, --permutations    Path of file containing a list of permutations to try
                        (see permutations/ dir). (default: permutations\default.txt)
```
