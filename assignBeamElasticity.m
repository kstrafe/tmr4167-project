
% Beregner b�yestivheten basert p� hvilket materiale elementet best�r av.
% Informasjonen er hentet fra matrisen beams, der all data om elementet er
% lagret.
function [matrix] = assignBeamElasticity(beams, materials)
	to_add = [];
	for i = 1:size(beams)
		modulus = -1;
		for j = 1:size(materials)
			if materials(j, 1) == beams(i, 4)
				modulus = materials(j, 2);
			end
		end
		to_add(i) = modulus;
	end
	matrix = [beams transpose(to_add)];
end
