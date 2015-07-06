
local celular = {}

local mapping = {
    [2] = {"a", "b", "c"},
    [3] = {"d", "e", "f"},
    [4] = {"g", "h", "i"},
    [5] = {"j", "k", "l"},
    [6] = {"m", "n", "o"},
    [7] = {"p", "q", "r", "s"},
    [8] = {"t", "u", "v"},
    [9] = {"w", "x", "y", "z"},
    [0] = {" "},
}
 
local function repetirCaracter(caracter, quantidade)
    local resultado = ""
    
    for i=1,quantidade do
        resultado = resultado .. caracter
    end
    return resultado
end

local function getIndexOf(caracter)
 
    for number, letters in pairs(mapping) do
        for index, letter in pairs(letters) do
            if letter == caracter then
                return number, index
            end
        end
    end
    
    return nil, "shape not found" -- or maybe call error() here

end

local function converterCaracter(caracter)
    
    local number, pos = getIndexOf(caracter)

    if number == nil then 
        return nil
    end
    
    return repetirCaracter(number, pos), number

end

function celular.converter(texto)
    local ultimoGrupo = nil
    local resultado = ""
    texto = texto:lower()
    for i = 1, #texto do
        local caracter = texto:sub(i,i)
        local convertido, grupo = converterCaracter(caracter)
        if convertido ~= nil then
            
            if ultimoGrupo == grupo then 
                resultado = resultado .. "_"
            end
            ultimoGrupo = grupo
            resultado = resultado .. convertido
        end
    end
    return resultado
end

return celular
