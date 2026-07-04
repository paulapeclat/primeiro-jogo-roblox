--[[
	ONDE COLAR: no ServerScriptService
	(Explorer → botão direito em ServerScriptService → Insert Object → Script)

	O ServerScriptService é o "painel de controle" do jogo: scripts colados
	lá valem para TODOS os jogadores, não para um objeto específico.

	O QUE FAZ: cria o placar de moedas que aparece no canto da tela.

	O QUE A CRIANÇA APRENDE: VARIÁVEL de verdade, com motivo de verdade —
	um lugar com nome ("Moedas") que guarda um número que muda durante o jogo.
]]

local Players = game:GetService("Players")

-- EVENTO: toda vez que um jogador ENTRA no jogo...
Players.PlayerAdded:Connect(function(jogador)
	-- ...criamos uma pastinha chamada "leaderstats" dentro dele.
	-- Esse nome é MÁGICO para o Roblox: tudo que estiver dentro de uma
	-- pasta com exatamente esse nome aparece no placar da tela.
	local placar = Instance.new("Folder")
	placar.Name = "leaderstats" -- precisa ser EXATAMENTE este nome!
	placar.Parent = jogador

	-- A VARIÁVEL: um valor inteiro (IntValue) chamado "Moedas", começando em 0.
	local moedas = Instance.new("IntValue")
	moedas.Name = "Moedas"
	moedas.Value = 0
	moedas.Parent = placar

	-- EXPERIMENTE: mude "Moedas" para outro nome ("Estrelas"? "Pontos"?)
	-- Mas atenção: o script 04-moeda.luau procura pelo nome "Moedas" —
	-- se mudar aqui, mude lá também. Nomes combinados são um contrato!
end)
