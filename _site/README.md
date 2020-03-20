# Blog Più Europa 4.0

Questa è la repo ufficiale del nostro blog. La versione up-and-running più
recente del blog è accessibile dalla tab *Environments*.
Aggiornerò il README man mano che il codice si espande e il sito diventa più
complesso nelle sue parti ed organizzato nel suo contenuto.

## Preparazione
Il blog è costruito con il framework Jekyll. Prima di poter lanciare il blog in
locale, assicurati che tutto il tooling necessario sia installato sul tuo
computer. Avrai bisogno di:
- Ambiente Ruby - segui le [istruzioni ufficiali](https://jekyllrb.com/docs/installation/)
- Jekyll e Bundler - esegui il comando a seguire:
  ```
  gem install jekyll bundler
  ```

## Come lanciare il blog in locale

> **NOTA BENE**: Se ancora non hai clonato la repository sul tuo computer, questo è il momento di farlo!
> Apri il tuo terminale, naviga nella cartella che ritieni più opportuna ed esegui quanto segue:
> ```
> git clone https://github.com/piueuropa40/piueuropa40.github.io.git blog
> ```
> Inserisci le tue credenziali GitHub come richiesto e, al completamento del cloning,naviga nella cartella `blog`.


Per lanciare il blog:
1. Scarica ed installa le dipendenze del progetto.
2. Spinna il server.
Il tutto, così (da dentro la cartella `blog`, nel terminale):
```
bundle install
bundle exec jekyll serve
```

## Informazioni sulla configurazione

La configurazione generale del blog è specificata nel file `_config.yml`. 
Il tema che ho scelto (per il momento) è [minimal-mistakes](https://github.com/mmistakes/minimal-mistakes). Ulteriori informazioni circa le customizzazioni disponibili e il funzionamento del tema sono disponibili sulla repo del tema.
