-- Função para calcular a chance de drop
local function calcularChance(chance)
    return math.random(1, 100) <= chance
end

-- Definição do boss e suas chances de drop
local boss = {
    nome = "Dragão Negro",
    chanceDropItem = 25, -- Chance de dropar o item em percentagem
}

-- Função para matar o boss e verificar se o item foi dropado
local function matarBoss()
    print("Você matou o " .. boss.nome .. "!")
    if calcularChance(boss.chanceDropItem) then
        print("Parabéns! Você conseguiu o item raro!")
    else
        print("O " .. boss.nome .. " não dropou o item desta vez.")
    end
end

-- Teste matando o boss várias vezes para ver a variação na chance de drop
for i = 1, 10 do
    print("\nTentativa " .. i .. ":")
    matarBoss()
end
