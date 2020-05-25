---
layout: single
author: Mario Lavanga
title: "Elezioni cariche statutarie 18 Novembre 2019"
date: "2019-11-19"
---

Lo statuto, disponibile [online](https://piueuropa.files.wordpress.com/2019/11/statuto_pe40.pdf), prevede l’elezione delle seguenti cariche: 1 coordinatore, 1 tesoriere, 3 consiglieri. Qui di seguito, i dati e i risultati delle votazioni, con il numero di preferenze per ogni candidato e gli eletti evidenziati.

- Totale aventi diritto: 13
- Totale voti ricevuti: 11
- Totale voti validi: 11
- Voti annullati: 0
- Totale astenuti: 2
- Affluenza: 84%
- Numero candidati: 1 candidato presidente, 1 candidato coordinatore, 1 candidato tesoriere, 3 candidati consiglieri

## _Risultati_

Presidente:

- **Giulia Pastorella**: 11 voti

Coordinatore:

- **Mario Lavanga**: 11 voti

Tesoriere:

- **Stefano Tommei**: 11 voti

Consiglieri:

- **Luca Geronimi**: 10
- **Antonella Succurro**: 11
- **Alessandro Beltrami**: 10


## _Sistema di voto online_

Un argomento “scottante” e abbastanza attuale è offrire un sistema di voto online sicuro e trasparente, che garantisca anonimato e prevenga duplicazione di voti. Non avevamo un tool adatto a disposizione e, nelle settimane precedenti alla votazione, mi sono arrangiata mettendo in piedi un sistema minimal.

Il sistema ha bisogno di due garanti (A e B, che possono votare, ma non devono scambiarsi informazioni chiave) con un minimo di familiarità con la programmazione, e funziona così:

- Ogni avente diritto al voto è identificato dalla sua email (non anonima)
- Il garante A genera dei codici unici associati alle email dei votanti
- Il garante A invia una email ai votanti comunicando il rispettico codice
- Il garante A invia al garante B la lista dei codici validi (senza l’informazione delle email associate)
- Il garante B si occupa di creare e gestire un form online dove i votanti esprimono le loro preferenze e inseriscono il codice ricevuto
- Il garante B raccoglie i voti e confronta i codici ricevuti con la lista dei codici validi, verificando quindi l’unicità e validità dei voti

Dato che A conosce solo la corrispondenza “votante <-> codice”, e B conosce solo la corrispondenza “codice <-> voto”, nè A nè B possono sapere chi ha votato cosa. Le fasi di generazione e validazione dei codici sono gestite con degli script in Python (che trovate [qui](https://github.com/asuccurro/anonyque) con le istruzioni e degli esempi) che permettono la semi-automazione del processo. Le email personalizzate possono essere inviate con le funzioni di mail merge, disponibili ad esempio con [Outlook](https://support.office.com/en-ie/article/use-mail-merge-to-send-bulk-email-messages-0f123521-20ce-4aa8-8b62-ac211dedefa4) o [LibreOffice](https://jb-blog.readthedocs.io/en/latest/posts/0003-mailmerge-lo.html). Per quanto riguarda il form, ho optato per un semplice GoogleForm perché altri form online gratuiti o non permettevano l’esportazione dei risultati come file csv, oppure visualizzavano in automatico informazioni quali l’IP del voto ricevuto, che andrebbe a rendere identificabile il voto.

In conclusione, questo sistema semplice (per chi abbia dimestichezza con il terminale di comando) e gratuito, ci ha permesso di effettuare le nostre votazioni garantendo l’anonimato ai votanti e identificando problemi (abbiamo ricevuto un doppio voto, che è stato annullato). Sicuramente dedicandoci più tempo e magari risorse si può perfezionare e rendere più semplice. L’elefante nella stanza per quel che riguarda questo sistema e il voto online in generale resta comunque il problema di come garantire la non trasferibilità del voto, poiché il codice può essere tranquillamente comunicato a terzi.
