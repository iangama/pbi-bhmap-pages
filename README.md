# BHMap no Power BI (via GitHub Pages)

Este projeto hospeda uma página HTML que carrega o BHMap via script e inicializa com `BHMap.startMap("map")`.

## Uso no Power BI
1) Publique no GitHub Pages (Settings → Pages).
2) No Power BI, use o visual "Web" e cole a URL do Pages.

## Diagnóstico
A própria página mostra:
- se o script do BHMap carregou
- se `BHMap.startMap` existe
- se o mapa iniciou

Se falhar dentro do Power BI:
- rede/proxy corporativo pode estar bloqueando `bhmap.pbh.gov.br`
- políticas do Power BI podem bloquear conteúdo externo
