--[[
	ONDE COLAR: dentro de uma plataforma do percurso (Part, Anchored ✅)

	O QUE FAZ: pisou, a plataforma avisa (fica translúcida), some,
	e volta depois de 2 segundos. Clássico dos obbys!

	O QUE A CRIANÇA APRENDE: TEMPO no código (task.wait) e a ideia de
	ESTADOS: a mesma plataforma pode estar sólida, avisando ou sumida.
]]

local plataforma = script.Parent

-- Trava para a sequência não recomeçar no meio (mesma ideia do
-- debounce da moeda — repare como o truque aparece de novo!)
local ocupada = false

plataforma.Touched:Connect(function(parte)
	if ocupada then
		return
	end

	-- Só reage a personagens, não a objetos que encostem nela.
	if parte.Parent:FindFirstChildOfClass("Humanoid") then
		ocupada = true

		-- ESTADO 1: aviso. Meio transparente = "sai daqui rápido!"
		task.wait(0.6)
		plataforma.Transparency = 0.6

		-- ESTADO 2: sumiu. Invisível E atravessável.
		task.wait(0.4)
		plataforma.Transparency = 1
		plataforma.CanCollide = false

		-- ESTADO 3: voltou ao normal, pronta para a próxima vítima.
		task.wait(2)
		plataforma.Transparency = 0
		plataforma.CanCollide = true
		ocupada = false

		-- DECISÃO DE DESIGN: os tempos acima (0.6 / 0.4 / 2) mudam
		-- completamente a dificuldade. Teste com a turma: qual
		-- combinação é desafiadora sem ser injusta?
	end
end)
