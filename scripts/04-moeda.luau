--[[
	ONDE COLAR: dentro da Part da moeda

	IMPORTANTE no Properties da moeda:
	- Anchored: MARCADO (senão ela cai no chão)
	- CanCollide: DESMARCADO (para o personagem atravessar, e não tropeçar)

	Depois de colar, é só duplicar a moeda (Ctrl+D) pelo percurso —
	o script vai junto dentro de cada cópia!

	O QUE FAZ: a moeda gira, e quem pega ganha +1 no placar.

	O QUE A CRIANÇA APRENDE: somar em uma variável e o truque do
	"debounce" — impedir que a mesma moeda seja pega duas vezes.
]]

local moeda = script.Parent
local Players = game:GetService("Players")

-- O evento Touched dispara VÁRIAS vezes num piscar de olhos
-- (pé esquerdo, pé direito, joelho...). Sem esta trava, uma moeda
-- daria 5 pontos! Guardamos na variável se ela já foi coletada.
local coletada = false

moeda.Touched:Connect(function(parte)
	-- Se já foi pega, não faz mais nada. ("return" = pare por aqui)
	if coletada then
		return
	end

	local jogador = Players:GetPlayerFromCharacter(parte.Parent)
	if jogador then
		coletada = true -- trava ANTES de dar o ponto

		-- Procura o placar criado pelo script 03 e soma 1.
		jogador.leaderstats.Moedas.Value += 1

		-- DECISÃO DE DESIGN: e se a moeda escondida valesse 5?
		-- Troque o 1 e veja o que acontece com o caminho que os
		-- jogadores escolhem... é assim que designers guiam pessoas.

		moeda:Destroy() -- a moeda some do mundo
	end
end)

-- Enquanto a moeda existir, ela fica girando (charme puro ✨).
-- Quando o Destroy acontece lá em cima, o giro para junto.
while true do
	moeda.CFrame = moeda.CFrame * CFrame.Angles(0, math.rad(3), 0)
	task.wait(0.03)
end
