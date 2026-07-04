--[[
	ONDE COLAR: dentro de um SpawnLocation colocado no meio do percurso
	(Explorer → botão direito no SpawnLocation → Insert Object → Script)

	IMPORTANTE no Properties do SpawnLocation:
	- Neutral: DESMARCADO (senão os jogadores podem NASCER aqui no início do jogo)
	- Enabled: marcado

	O QUE FAZ: quem pisar aqui passa a renascer aqui — chega de voltar do zero!

	O QUE A CRIANÇA APRENDE: que o jogo sabe QUEM encostou (o jogador),
	e que dá para guardar informações sobre cada jogador.
]]

local checkpoint = script.Parent

-- "Serviços" são os grandes departamentos do Roblox.
-- O departamento "Players" cuida de todos os jogadores conectados.
local Players = game:GetService("Players")

checkpoint.Touched:Connect(function(parte)
	-- Descobrimos QUAL JOGADOR é dono do personagem que encostou.
	-- (parte é um pé/braço; parte.Parent é o personagem inteiro)
	local jogador = Players:GetPlayerFromCharacter(parte.Parent)

	if jogador then
		-- A partir de agora, se cair na lava, renasce AQUI. 💾
		jogador.RespawnLocation = checkpoint
	end
end)
