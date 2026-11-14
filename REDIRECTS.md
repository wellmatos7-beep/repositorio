# Redirecionamentos de slugs antigos

O site é publicado pelo GitHub Pages (workflow `.github/workflows/static.yml`). GitHub Pages não oferece configuração de redirecionamento HTTP 301 para sites estáticos. Os arquivos HTML antigos podem fazer um redirecionamento no navegador, mas isso não equivale a uma resposta HTTP 301 e não deve ser considerado suficiente para preservar sinais de SEO.

Configure os redirecionamentos no serviço que efetivamente atende `wellingtonmatos.com.br` (por exemplo, uma regra de Redirect Rule no Cloudflare, se o DNS/proxy do domínio estiver lá) ou migre para um host que suporte regras de redirecionamento. Regras necessárias:

| Caminho antigo | Caminho novo | Status |
| --- | --- | --- |
| `/artigos/aviao-b25d-segunda-guerra-mundial.html` | `/artigos/b25d-mitchell-humberto-de-campos-maranhao-1943.html` | 301 |
| `/artigos/aviao-b25d-segunda-guerra-mundial` | `/artigos/b25d-mitchell-humberto-de-campos-maranhao-1943.html` | 301 |
| `/artigos/caminhoes-de-hitler-no-brasil.html` | `/artigos/caminhoes-opel-blitz-sao-bento-maranhao-projeto-ama.html` | 301 |
| `/artigos/caminhoes-de-hitler-no-brasil` | `/artigos/caminhoes-opel-blitz-sao-bento-maranhao-projeto-ama.html` | 301 |

Teste cada URL antiga com uma ferramenta de verificação HTTP e confirme que a resposta é `301` e o destino final é a URL canônica nova. Não remova as páginas HTML antigas até confirmar os redirects no host ativo.
