-- Definindo as cartas do baralho (cada carta é representada por seu valor e naipe)
local baralho = {
    {valor = 1, naipe = "Espada"}, {valor = 2, naipe = "Espada"}, {valor = 3, naipe = "Espada"},
    {valor = 4, naipe = "Espada"}, {valor = 5, naipe = "Espada"}, {valor = 6, naipe = "Espada"},
    {valor = 7, naipe = "Espada"}, {valor = 8, naipe = "Espada"}, {valor = 9, naipe = "Espada"},
    {valor = 10, naipe = "Espada"}, {valor = 11, naipe = "Espada"}, {valor = 12, naipe = "Espada"},
    {valor = 1, naipe = "Ouro"}, {valor = 2, naipe = "Ouro"}, {valor = 3, naipe = "Ouro"},
    {valor = 4, naipe = "Ouro"}, {valor = 5, naipe = "Ouro"}, {valor = 6, naipe = "Ouro"},
    {valor = 7, naipe = "Ouro"}, {valor = 8, naipe = "Ouro"}, {valor = 9, naipe = "Ouro"},
    {valor = 10, naipe = "Ouro"}, {valor = 11, naipe = "Ouro"}, {valor = 12, naipe = "Ouro"},
    {valor = 1, naipe = "Paus"}, {valor = 2, naipe = "Paus"}, {valor = 3, naipe = "Paus"},
    {valor = 4, naipe = "Paus"}, {valor = 5, naipe = "Paus"}, {valor = 6, naipe = "Paus"},
    {valor = 7, naipe = "Paus"}, {valor = 8, naipe = "Paus"}, {valor = 9, naipe = "Paus"},
    {valor = 10, naipe = "Paus"}, {valor = 11, naipe = "Paus"}, {valor = 12, naipe = "Paus"},
    {valor = 1, naipe = "Copa"}, {valor = 2, naipe = "Copa"}, {valor = 3, naipe = "Copa"},
    {valor = 4, naipe = "Copa"}, {valor = 5, naipe = "Copa"}, {valor = 6, naipe = "Copa"},
    {valor = 7, naipe = "Copa"}, {valor = 8, naipe = "Copa"}, {valor = 9, naipe = "Copa"},
    {valor = 10, naipe = "Copa"}, {valor = 11, naipe = "Copa"}, {valor = 12, naipe = "Copa"}
}

-- Função para embaralhar o baralho
function embaralhar(baralho)
    for i = #baralho, 2, -1 do
        local j = math.random(i)
        baralho[i], baralho[j] = baralho[j], baralho[i]
    end
end

-- Função para distribuir cartas para os jogadores
function distribuirCartas(baralho)
    local jogador1 = {}
    local jogador2 = {}
    
    -- Distribui 3 cartas para cada jogador
    for i = 1, 3 do
        table.insert(jogador1, table.remove(baralho))
        table.insert(jogador2, table.remove(baralho))
    end
    
    return jogador1, jogador2
end

-- Função para exibir as cartas do jogador
function exibirCartas(jogador)
    print("Cartas do jogador:")
    for _, carta in ipairs(jogador) do
        print(carta.valor .. " de " .. carta.naipe)
    end
end

-- Função principal do jogo
function jogoTruco()
    -- Embaralha o baralho
    embaralhar(baralho)

    -- Distribui as cartas
    local jogador1, jogador2 = distribuirCartas(baralho)

    -- Exibe as cartas de ambos os jogadores
    exibirCartas(jogador1)
    exibirCartas(jogador2)

    -- Inicia o jogo, apenas com uma jogada simples por enquanto
    print("Jogada do jogador 1: " .. jogador1[1].valor .. " de " .. jogador1[1].naipe)
    print("Jogada do jogador 2: " .. jogador2[1].valor .. " de " .. jogador2[1].naipe)

    -- Comparar quem venceu (apenas baseado no valor das cartas, sem truco)
    if jogador1[1].valor > jogador2[1].valor then
        print("Jogador 1 venceu a rodada!")
    elseif jogador2[1].valor > jogador1[1].valor then
        print("Jogador 2 venceu a rodada!")
    else
        print("Empate!")
    end
end

-- Rodar o jogo
jogoTruco()
