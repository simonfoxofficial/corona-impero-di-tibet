# Impero Di Tibet

Datapack per **Minecraft Java Edition 26.2** che aggiunge una corona speciale: chi la possiede diventa "l'imperatore", ottiene più vita massima, e il suo arrivo (o la sua caduta) viene annunciato a tutto il server.

## Cosa fa

- Aggiunge un oggetto unico, **Corona**, basato su un elmetto d'oro
- Chi la ottiene diventa l'imperatore: riceve **+20 vita massima** (10 cuori extra)
- La corona ha l'incantesimo **Curse of Binding** — una volta indossata, non si può più togliere (se non con la morte)
- Ha una rifinitura (trim) "silenzio" in oro e l'effetto glint da incantesimo
- È **indistruttibile**: non perde durabilità, resiste a fuoco, lava, esplosioni, fulmini, cactus e altri danni, e a terra non sparisce mai (nemmeno dopo i 5 minuti in cui gli oggetti normali svaniscono). L'unica eccezione è il vuoto (cadere fuori dal mondo)
- Quando arriva un nuovo imperatore: sottotitolo a schermo + suono dell'evocazione del Wither, per tutti i giocatori
- Quando la corona viene **buttata a terra**, l'imperatore viene destituito: sottotitolo + suono della morte del Wither
- Il raccoglimento della corona è **automatico**: basta trovarla (per terra, in un baule, ovunque) e prenderla in inventario — non serve indossarla subito
- Muoversi la corona dentro il proprio inventario non fa perdere il titolo: lo si perde solo se esce davvero dall'inventario (viene buttata nel mondo)

## Come si ottiene

In due modi:

1. **Comando manuale** (per un admin/operatore):
   ```
   /function tibet:corona
   ```
   Dà la corona a chi esegue il comando e lo promuove subito a imperatore.

2. **Raccolta automatica**: chiunque trovi la corona (a terra, in un baule, ecc.) e se la metta in inventario diventa automaticamente il nuovo imperatore, se non lo è già.

## Installazione

1. Scarica lo zip del datapack
2. Mettilo nella cartella `datapacks` del tuo mondo:
   ```
   <nome_mondo>/datapacks/
   ```
3. In gioco (o all'avvio del server), esegui:
   ```
   /reload
   ```

## Gestione dei permessi (opzionale)

Il datapack **non** gestisce automaticamente permessi o gruppi (es. LuckPerms). Se vuoi collegare il titolo di "imperatore" a un gruppo sul tuo server, dovrai aggiornarlo manualmente quando vedi comparire gli annunci a schermo.

## Struttura del datapack

```
data/
├── tibet/
│   ├── advancement/
│   │   └── raccolta_corona.json       # rileva quando la corona entra nell'inventario di qualcuno
│   ├── tags/
│   │   └── damage_type/
│   │       └── corona_indistruttibile.json # danni a cui la corona resiste
│   └── function/
│       ├── corona.mcfunction          # dà la corona a chi esegue il comando
│       ├── promuovi_effetti.mcfunction        # titolo, suono e tag di promozione
│       ├── promuovi_da_advancement.mcfunction # gestisce la promozione automatica da raccolta
│       ├── controlla_corona.mcfunction        # rileva se la corona è stata buttata a terra
│       ├── destituisci.mcfunction             # titolo, suono e tag di destituzione
│       └── fine_cooldown.mcfunction           # evita annunci ripetuti troppo ravvicinati
└── minecraft/
    └── tags/
        └── function/
            └── tick.json               # fa girare il controllo della corona ogni tick
```

## Requisiti

- Minecraft Java Edition **26.2** (pack format 107)
- Nessuna mod o plugin richiesto — solo vanilla/datapack

## Licenza

Progetto distribuito con licenza [MIT](LICENSE).