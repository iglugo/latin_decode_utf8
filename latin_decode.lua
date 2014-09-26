local M1={};

-------------------------------------------------------------
-- Librería para descodificar carácteres latinos para CORONA SDK / Lua
-- Carácteres soportados: áÁéÉíÍóÓúÚüÜñÑ¡¿
-- Desarrollado por Iglugo.com / YoFriki.com
-- Git: 

-- uso: latin_string = lib.latin_decode(string)
-------------------------------------------------------------

function M1.latin_decode(utf8)
	local cadena = ""
	local pos = 1
	local character
	
	while pos < string.len(utf8)+1 do
		if string.byte(string.sub(utf8, pos, pos)) == 225 then character = "á"
		elseif string.byte(string.sub(utf8, pos, pos)) == 193 then character = "Á"
		elseif string.byte(string.sub(utf8, pos, pos)) == 233 then character = "é"
		elseif string.byte(string.sub(utf8, pos, pos)) == 201 then character = "É"
		elseif string.byte(string.sub(utf8, pos, pos)) == 237 then character = "í"
		elseif string.byte(string.sub(utf8, pos, pos)) == 205 then character = "Í"
		elseif string.byte(string.sub(utf8, pos, pos)) == 243 then character = "ó"
		elseif string.byte(string.sub(utf8, pos, pos)) == 211 then character = "Ó"
		elseif string.byte(string.sub(utf8, pos, pos)) == 250 then character = "ú"
		elseif string.byte(string.sub(utf8, pos, pos)) == 218 then character = "Ú"
		elseif string.byte(string.sub(utf8, pos, pos)) == 252 then character = "ü"
		elseif string.byte(string.sub(utf8, pos, pos)) == 220 then character = "Ü"
		elseif string.byte(string.sub(utf8, pos, pos)) == 241 then character = "ñ"
		elseif string.byte(string.sub(utf8, pos, pos)) == 209 then character = "Ñ"
		elseif string.byte(string.sub(utf8, pos, pos)) == 161 then character = "¡"
		elseif string.byte(string.sub(utf8, pos, pos)) == 191 then character = "¿"
		else
			character = string.sub(utf8, pos, pos)
		end
		pos = pos + 1
		cadena = cadena .. character
   end
	
   return cadena
end

return M1
