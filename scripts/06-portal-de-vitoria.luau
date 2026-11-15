--[[
	ONDE COLAR: dentro da Part do portal de chegada
	(sugestão: uma Part grande, Neon, Anchored ✅, CanCollide ❌)

	O QUE FAZ: quem chega ganha uma festa de partículas 🎉 e, na
	PRIMEIRA chegada, +10 moedas de bônus.

	O QUE A CRIANÇA APRENDE: uma TABELA — a estrutura que guarda
	informação sobre VÁRIOS jogadores ao mesmo tempo (a moeda usava
	uma trava para todos; aqui cada jogador tem a sua).
]]

local portal = script.Parent
local Players = game:GetService("Players")

-- Tabela: um armário com uma gaveta para cada jogador.
-- Assim, a vitória de um não trava a vitória do outro.
local comemorando = {}

-- Segunda tabela: quem JÁ ganhou o bônus. Sem ela, bastaria ficar
-- parado no portal para ganhar +10 moedas a cada 3 segundos!
local jaGanhouBonus = {}

portal.Touched:Connect(function(parte)
	local jogador = Players:GetPlayerFromCharacter(parte.Parent)

	-- Só continua se for um jogador E se ele não estiver
	-- no meio de uma comemoração (encostar no portal dispara
	-- o evento várias vezes — nosso velho conhecido!).
	if jogador and not comemorando[jogador.UserId] then
		comemorando[jogador.UserId] = true

		-- Bônus de chegada: só uma vez por jogador,
		-- e só se o placar do script 03 existir.
		local placar = jogador:FindFirstChild("leaderstats")
		if placar and not jaGanhouBonus[jogador.UserId] then
			jaGanhouBonus[jogador.UserId] = true
			placar.Moedas.Value += 10
		end

		-- FESTA: um emissor de partículas criado na hora, do nada!
		local festa = Instance.new("ParticleEmitter")
		festa.Rate = 60
		festa.Parent = portal

		-- A festa dura 3 segundos...
		task.wait(3)
		festa:Destroy()

		-- ...e liberamos a gaveta: pode comemorar de novo. 🏆
		comemorando[jogador.UserId] = nil
	end
end)

-- Quando o jogador sai do jogo, limpamos as gavetas dele.
Players.PlayerRemoving:Connect(function(jogador)
	comemorando[jogador.UserId] = nil
	jaGanhouBonus[jogador.UserId] = nil
end)
