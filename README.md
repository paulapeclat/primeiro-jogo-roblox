**🇧🇷 Português** · [🇺🇸 English](README.en.md)

# 🧱 Oficina: Meu Primeiro Jogo no Roblox Studio

[![DOI](https://zenodo.org/badge/DOI/10.5281/zenodo.24238307.svg)](https://doi.org/10.5281/zenodo.24238307)

> Roteiro completo de oficina para crianças criarem seu primeiro *obby* (percurso de obstáculos) no Roblox Studio — da primeira plataforma ao primeiro script em Luau.

**Autora:** [Paula Peclat](https://github.com/paulapeclat) · [APedê Digital](https://paulapeclat.com.br)
**Faixa etária:** 9 a 13 anos · **Duração:** 2h30 (ou 3 encontros de 1h) · **Ferramenta:** [Roblox Studio](https://create.roblox.com) (gratuito, Windows e Mac)

---

## Por que esta oficina existe

O Roblox é onde milhões de crianças brasileiras **já estão** — jogando, conversando e gastando. Na perspectiva da educação midiática, essa é exatamente a razão para levá-lo à sala de aula: quando a criança atravessa o balcão e vira **criadora**, ela descobre que cada obby, cada loja de passes e cada "só mais uma fase" foi **decidido por alguém**. E passa a olhar as experiências que consome com outros olhos.

Este material segue a progressão **do concreto ao abstrato**: primeiro construímos com blocos e propriedades (arrastar, colorir, ancorar), e só quando o mundo já existe é que o **código Luau** aparece — como a ferramenta que dá regras ao mundo.

## Objetivos de aprendizagem

Ao final, cada criança terá:

- [ ] Construído um *obby* funcional com começo, obstáculos e chegada
- [ ] Manipulado **propriedades** de objetos (posição, cor, material, âncora)
- [ ] Colado, lido e **modificado** seus primeiros scripts em **Luau**
- [ ] Entendido o padrão **evento → verificação → ação** (`Touched` → `if` → consequência)
- [ ] Usado uma **variável** de verdade (o placar de moedas)
- [ ] Tomado ao menos **3 decisões de design próprias** e sabido justificá-las
- [ ] Refletido sobre **quem decide** — e quem lucra — nos jogos que joga

**Alinhamento BNCC:** Competência Geral 5 (cultura digital) — compreender, utilizar e **criar** tecnologias digitais de forma crítica, significativa e ética.

## Antes da oficina (logística é meio caminho)

O Roblox Studio exige instalação e conta — resolva isso **antes** do dia:

1. **Instalar o Roblox Studio** em todas as máquinas ([create.roblox.com](https://create.roblox.com))
2. **Contas criadas com os responsáveis**: os Termos do Roblox pedem envolvimento dos responsáveis para menores de 13; aproveite para configurar juntos as **opções de privacidade e controle parental**
3. Testar login em cada máquina — senha esquecida no dia da oficina consome 15 minutos que você não tem
4. Projetor para demonstração

## Segurança primeiro 🔒

Combine com a turma logo no início (e envie aos responsáveis por escrito):

- **Senha é segredo** — nem para o melhor amigo
- **Chat**: nesta oficina jogamos as criações uns dos outros localmente; se a experiência for publicada, conversem antes sobre chat com desconhecidos e como **denunciar e bloquear**
- **Robux**: nenhuma atividade desta oficina usa ou precisa de Robux — se alguém pedir Robux para "liberar" algo, é golpe
- Configurações de conta: restrições de privacidade por idade são suas aliadas

## Roteiro

### Etapa 0 — Conversa de abertura (10 min)

Pergunte: *"Qual jogo de Roblox você mais joga? Quem foi que DECIDIU as regras dele? E quando alguém compra um passe... para onde vai o dinheiro?"*
Anote as hipóteses no quadro — vamos voltar a elas no fechamento.

### Etapa 1 — Conhecendo a oficina do Studio (20 min)

1. Abrir o Roblox Studio → modelo **Baseplate**
2. Explorar juntos as três janelas que importam hoje: a **cena 3D** (o mundo), o **Explorer** (a lista de tudo que existe no mundo) e o **Properties** (as características do que está selecionado)
3. Inserir uma **Part**, praticar: **mover**, **girar**, **escalar**
4. A propriedade mais importante do dia: **Anchored** ✅ — sem ela, as plataformas caem! Deixe caírem uma vez de propósito: erro que vira aprendizado
5. Cada criança escolhe **cor e material** das suas plataformas (Neon? Madeira? Lava?) — **decisão de design nº 1**

### Etapa 2 — Construindo o percurso (25 min)

1. Duplicar plataformas (`Ctrl+D`) e montar um caminho no céu: perto, longe, alto, estreito…
2. Testar o próprio percurso com **Play** (▶️) — e ajustar. Pergunta-gatilho: *"Um pulo impossível é divertido? E dez pulos fáceis seguidos?"*
3. Combinar o formato do desafio: começo no chão, chegada visível ao longe

*Intervalo natural aqui se a oficina for em encontros de 1h.*

### Etapa 3 — A lava: o primeiro script (20 min)

O mundo existe, mas ainda não tem **regras**. Regras, no Roblox, são scripts em **Luau**.

1. Criar a plataforma-lava (cor: vermelho neon, claro)
2. No Explorer: botão direito na Part → **Insert Object → Script**
3. Apagar o `print("Hello world!")` e colar [`scripts/01-lava.luau`](scripts/01-lava.luau)
4. Ler o script **em voz alta, linha por linha** — todas as linhas têm comentário em português
5. Testar: pisou, dançou 🔥
6. **Decisão de design nº 2**: a lava **mata** ou só **machuca**? (o script mostra como fazer cada um)

### Etapa 4 — Checkpoint: ninguém merece voltar do zero (15 min)

1. Inserir um **SpawnLocation** no meio do percurso (desmarcar **Neutral** no Properties)
2. Colar [`scripts/02-checkpoint.luau`](scripts/02-checkpoint.luau) dentro dele
3. Conversar: *"Por que os jogos têm checkpoint? O que acontece com a vontade de jogar quando não tem?"* — design de jogo é design de **emoção**

### Etapa 5 — Moedas e placar (25 min)

Agora a variável aparece com um motivo de verdade: **guardar a pontuação**.

1. Colar [`scripts/03-placar-de-moedas.luau`](scripts/03-placar-de-moedas.luau) no **ServerScriptService** (é o "painel de controle" do jogo — scripts que valem para todos os jogadores moram lá)
2. Criar uma moeda: Part pequena, dourada, **Anchored ✅**, **CanCollide ❌**
3. Colar [`scripts/04-moeda.luau`](scripts/04-moeda.luau) dentro dela e duplicar a moeda pelo percurso
4. **Decisão de design nº 3**: onde fica a moeda mais difícil? Vale a pena arriscar por ela? (é assim que designers controlam o seu caminho…)

### Etapa 6 — Plataforma que some + portal de vitória (20 min)

1. Escolher uma plataforma do percurso e colar [`scripts/05-plataforma-que-some.luau`](scripts/05-plataforma-que-some.luau) — ela avisa, some e volta
2. Criar a chegada: um portal com [`scripts/06-portal-de-vitoria.luau`](scripts/06-portal-de-vitoria.luau) — bônus de moedas e festa de partículas 🎉

### Etapa 7 — Festival de obbys + fechamento (15 min)

1. Rodízio: cada criança joga o obby de outra
2. Roda de conversa, voltando ao quadro da Etapa 0:
   - *"O que você decidiu no seu obby que ficou diferente do obby do colega?"*
   - *"Por que será que tantos obbys famosos têm 999 fases? O que o criador ganha quando você fica mais tempo?"*
   - *"Se um jogo te oferece um passe por 99 Robux… quanto é isso em dinheiro DE VERDADE? Quem decidiu esse preço?"*

Essa última pergunta é a ponte da criação para a **leitura crítica de mídia** — não pule o fechamento.

## Como usar a pasta [`scripts/`](scripts/)

Cada arquivo `.luau` começa com um cabeçalho dizendo **onde colar** e **o que a criança aprende**. O caminho no Studio é sempre o mesmo: selecionar o objeto no Explorer → botão direito → **Insert Object → Script** → apagar o conteúdo → colar. Todos os scripts são comentados linha a linha em português, para que o educador leia junto com a turma — o script não é mágica, é texto.

| Script | Onde colar | Conceito central |
|---|---|---|
| [`01-lava.luau`](scripts/01-lava.luau) | dentro da Part da lava | evento `Touched` + `if` |
| [`02-checkpoint.luau`](scripts/02-checkpoint.luau) | dentro do SpawnLocation | serviços e jogador |
| [`03-placar-de-moedas.luau`](scripts/03-placar-de-moedas.luau) | ServerScriptService | variáveis (`leaderstats`) |
| [`04-moeda.luau`](scripts/04-moeda.luau) | dentro da Part da moeda | *debounce* + somar em variável |
| [`05-plataforma-que-some.luau`](scripts/05-plataforma-que-some.luau) | dentro da plataforma | tempo (`task.wait`) e estados |
| [`06-portal-de-vitoria.luau`](scripts/06-portal-de-vitoria.luau) | dentro do portal de chegada | tabelas e efeitos |

## Avaliação

Observação processual, não prova: a criança construiu e testou? Leu o script e soube apontar "onde está a regra"? Modificou pelo menos um valor e previu o efeito? Tomou decisões próprias e soube justificá-las? Participou da reflexão final? Um checklist por aluno resolve.

## Variações

- **Mais novos (7-9):** o educador projeta e constrói; as crianças decidem coletivamente cada parâmetro (altura do pulo, cor da lava, valor da moeda) — a agência de design vem antes do mouse
- **Mais velhos (13+):** plataformas com [TweenService](https://create.roblox.com/docs/reference/engine/classes/TweenService), badges, ou **publicar a experiência** — publicar rende uma segunda conversa inteira de educação midiática: quem pode entrar? que chat fica ativo? o que significa colocar algo seu no mundo?
- **Uma máquina só:** oficina demonstrativa coletiva no projetor, decisões por votação

## Trilha completa

Esta oficina é irmã da [**Meu Primeiro Jogo em GDevelop**](https://github.com/paulapeclat/primeiro-jogo-gdevelop) (blocos visuais, 8-12 anos). A ordem que uso com minhas turmas vai **do concreto ao abstrato**: Code.org → GDevelop → Roblox Studio. Os projetos de Code.org das minhas turmas estão em [**projetos-code-org**](https://github.com/paulapeclat/projetos-code-org).

## Licença

[CC BY-SA 4.0](https://creativecommons.org/licenses/by-sa/4.0/deed.pt-br) — use, adapte e redistribua, com atribuição e mesma licença (scripts incluídos). Se usar em sua escola, [me conte como foi](https://github.com/paulapeclat/primeiro-jogo-roblox/issues)! 💛
