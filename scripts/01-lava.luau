--[[
	ONDE COLAR: dentro da Part da lava
	(Explorer → botão direito na Part → Insert Object → Script)

	O QUE FAZ: quando alguém encosta na lava, perde a vida.

	O QUE A CRIANÇA APRENDE: o padrão mais importante do Roblox —
	EVENTO (encostou) → VERIFICAÇÃO (é um personagem?) → AÇÃO (consequência).
]]

-- "script.Parent" significa: o objeto onde este script está colado.
-- Como colamos o script DENTRO da Part da lava, lava = a própria Part.
local lava = script.Parent

-- "Touched" é o EVENTO: acontece toda vez que algo encosta na lava.
-- A função entre parênteses é o que o jogo deve fazer quando isso ocorrer.
lava.Touched:Connect(function(parte)
	-- "parte" é O QUE encostou: pode ser o pé de um personagem,
	-- mas também pode ser uma moeda que caiu, outra peça, etc.
	-- Por isso VERIFICAMOS: só personagens têm um "Humanoid" dentro.
	local humanoide = parte.Parent:FindFirstChildOfClass("Humanoid")

	if humanoide then
		-- AÇÃO: vida zerada. Lava de verdade! 🔥
		humanoide.Health = 0

		-- DECISÃO DE DESIGN: quer uma lava mais gentil, que só machuca?
		-- Apague a linha de cima, tire os "--" da linha de baixo e escolha o dano:
		-- humanoide:TakeDamage(25)
	end
end)
